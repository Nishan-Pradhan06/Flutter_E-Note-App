import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../views/components/app_bar.dart';
import '../blocs/highlight_bloc.dart';
import 'package:go_router/go_router.dart';

class HighlightsListPage extends StatelessWidget {
  const HighlightsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: 'Saved Highlights',
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
      ),

      body: BlocBuilder<HighlightBloc, HighlightState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('No highlights yet.')),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (highlights) {
              if (highlights.isEmpty) {
                return const Center(child: Text('No highlights saved.'));
              }
              return ListView.builder(
                itemCount: highlights.length,
                itemBuilder: (context, index) {
                  final h = highlights[index];
                  return ListTile(
                    title: Text(
                      h.text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      '${h.style} - ${h.timestamp.toString().substring(0, 16)}',
                    ),
                    onTap: () {
                      // Navigate to the page and scroll
                      context.go('/${h.pageId}', extra: h);
                    },
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        context.read<HighlightBloc>().add(
                          HighlightEvent.delete(h.id),
                        );
                      },
                    ),
                  );
                },
              );
            },
            failure: (msg) => Center(child: Text('Error: $msg')),
          );
        },
      ),
    );
  }
}
