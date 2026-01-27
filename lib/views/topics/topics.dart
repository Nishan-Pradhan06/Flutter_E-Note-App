import 'package:flutter/material.dart';

import '../components/cards.dart';
import '../pages/unit1.dart';
import '../pages/unit2.dart';
import '../pages/unit3.dart';
import '../pages/unit4.dart';
import '../pages/unit5.dart';
import '../pages/unit6.dart';
import '../pages/unit7.dart';

class TopicsList extends StatelessWidget {
  const TopicsList({super.key});

  // Function to navigate after the ad
  void navigateToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          TopicsCards(
            title: 'DataBase',
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => const DataBase()));
            },
          ),
          const SizedBox(height: 8.0),
          TopicsCards(
            title: 'Data Communication and Networking',
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => NetWork()));
            },
          ),
          const SizedBox(height: 8.0),
          TopicsCards(
            title: 'Web Technology II',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const WebDevelopment()),
              );
            },
          ),
          const SizedBox(height: 8.0),
          TopicsCards(
            title: 'Programming in C',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ProgrammingC()),
              );
            },
          ),
          const SizedBox(height: 8.0),
          TopicsCards(
            title: 'Objected Oriented Programming',
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => OoP()));
            },
          ),
          const SizedBox(height: 8.0),
          TopicsCards(
            title: 'Software Process Model',
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => SpM()));
            },
          ),
          const SizedBox(height: 8.0),
          TopicsCards(
            title: 'Recent Trend in Technology',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => TechnologyChaper()),
              );
            },
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
