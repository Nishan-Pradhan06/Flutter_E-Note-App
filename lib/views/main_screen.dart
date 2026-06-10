import 'package:flutter/material.dart';
import '../service/banner_ad.dart';
import 'components/app_bar.dart';
import 'components/custom_drawer.dart';
import 'topics/topics.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: 'Computer Science Notes'),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Color(0xffE8F5F4), Color(0xffF7FCFC)],
          ),
        ),
        child: const SizedBox(child: TopicsList()),
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.1,
        child: const BannerAdWidget(),
      ),
      drawer: const CustomDrawerComponent(),
    );
  }
}
