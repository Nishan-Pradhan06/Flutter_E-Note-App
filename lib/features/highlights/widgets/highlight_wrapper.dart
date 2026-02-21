import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import '../blocs/highlight_bloc.dart';
import '../models/highlight_model.dart';
import 'selection_controls.dart';

class HighlightWrapper extends StatefulWidget {
  final String pageId;
  final String content;
  final TextStyle style;
  final TextAlign textAlign;
  final HighlightModel? targetHighlight;

  const HighlightWrapper({
    super.key,
    required this.pageId,
    required this.content,
    this.style = const TextStyle(fontSize: 16.0),
    this.textAlign = TextAlign.justify,
    this.targetHighlight,
  });

  @override
  State<HighlightWrapper> createState() => _HighlightWrapperState();
}

class _HighlightWrapperState extends State<HighlightWrapper> {
  TextSelection? _selection;
  final GlobalKey _textKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToIfMatch());
  }

  @override
  void didUpdateWidget(HighlightWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.targetHighlight != oldWidget.targetHighlight) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToIfMatch());
    }
  }

  void _scrollToIfMatch() {
    if (widget.targetHighlight == null) return;

    // Check if this wrapper contains the target highlight
    // We check pageId and also verify the text matches at the offsets
    if (widget.targetHighlight!.pageId == widget.pageId) {
      final h = widget.targetHighlight!;
      if (h.startOffset >= 0 && h.endOffset <= widget.content.length) {
        final actualText = widget.content.substring(h.startOffset, h.endOffset);
        if (actualText == h.text) {
          final context = _textKey.currentContext;
          if (context != null) {
            Scrollable.ensureVisible(
              context,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        }
      }
    }
  }

  void _onHighlight(BuildContext context, String style) {
    if (_selection == null || _selection!.isCollapsed) return;

    final selectedText = widget.content.substring(
      _selection!.start,
      _selection!.end,
    );
    final highlight = HighlightModel(
      id: const Uuid().v4(),
      text: selectedText,
      style: style,
      color: Colors.yellow.withValues(alpha: 0.5).toARGB32(),
      timestamp: DateTime.now(),
      pageId: widget.pageId,
      startOffset: _selection!.start,
      endOffset: _selection!.end,
    );

    context.read<HighlightBloc>().add(HighlightEvent.add(highlight));
  }

  @override
  Widget build(BuildContext context) {
    final controls = HighlightSelectionControls(
      onHighlight: () => _onHighlight(context, 'highlight'),
      onUnderline: () => _onHighlight(context, 'underline'),
      onBold: () => _onHighlight(context, 'bold'),
    );

    return BlocBuilder<HighlightBloc, HighlightState>(
      builder: (context, state) {
        final highlights = state.maybeWhen(
          success: (h) => h.where((e) => e.pageId == widget.pageId).toList(),
          orElse: () => <HighlightModel>[],
        );

        return SelectableText.rich(
          _buildTextSpan(highlights),
          key: _textKey,
          textAlign: widget.textAlign,
          selectionControls: controls,
          onSelectionChanged: (selection, cause) {
            _selection = selection;
          },
        );
      },
    );
  }

  TextSpan _buildTextSpan(List<HighlightModel> highlights) {
    if (highlights.isEmpty) {
      return TextSpan(text: widget.content, style: widget.style);
    }

    // Sort highlights and handle overlaps (basic approach: take first one)
    final sortedHighlights = List<HighlightModel>.from(highlights)
      ..sort((a, b) => a.startOffset.compareTo(b.startOffset));

    final List<TextSpan> spans = [];
    int lastOffset = 0;

    for (final h in sortedHighlights) {
      // Basic bounds check
      if (h.startOffset < lastOffset || h.endOffset > widget.content.length) {
        continue;
      }

      // Verification: Check if the text at these offsets matches the highlight's original text
      final actualText = widget.content.substring(h.startOffset, h.endOffset);
      if (actualText != h.text) {
        continue;
      }

      if (h.startOffset > lastOffset) {
        spans.add(
          TextSpan(
            text: widget.content.substring(lastOffset, h.startOffset),
            style: widget.style,
          ),
        );
      }

      TextStyle hStyle = widget.style;
      if (h.style == 'highlight') {
        hStyle = hStyle.copyWith(backgroundColor: Color(h.color));
      } else if (h.style == 'underline') {
        hStyle = hStyle.copyWith(decoration: TextDecoration.underline);
      } else if (h.style == 'bold') {
        hStyle = hStyle.copyWith(fontWeight: FontWeight.bold);
      }

      spans.add(
        TextSpan(
          text: widget.content.substring(h.startOffset, h.endOffset),
          style: hStyle,
        ),
      );

      lastOffset = h.endOffset;
    }

    if (lastOffset < widget.content.length) {
      spans.add(
        TextSpan(
          text: widget.content.substring(lastOffset),
          style: widget.style,
        ),
      );
    }

    return TextSpan(children: spans);
  }
}
