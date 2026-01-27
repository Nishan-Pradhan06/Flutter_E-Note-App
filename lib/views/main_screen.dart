import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/custom_drawer.dart';
import 'topics/topics.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        titleText: 'Computer Science',
      ),
      body: SizedBox(
        child: TopicsList(),
      ),
      backgroundColor: Color.fromARGB(130, 173, 223, 241),
      drawer: CustomDrawerComponent(),
    );
  }
}
