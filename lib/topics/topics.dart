import 'package:flutter/material.dart';
import '../pages/unit1.dart';
import '../pages/unit2.dart';
import '../pages/unit3.dart';
import '../pages/unit4.dart';
import '../pages/unit5.dart';
import '../pages/unit6.dart';
import '../pages/unit7.dart';

class TopicsList extends StatefulWidget {
  const TopicsList({super.key});

  @override
  State<TopicsList> createState() => _TopicsListState();
}

class _TopicsListState extends State<TopicsList> {
  ///start list view of topics.....
  Widget buildCard(String text, VoidCallback onTapFunction) {
    final screenSize = MediaQuery.of(context).size;
    double textSize = screenSize.width * 0.04;
    return GestureDetector(
      onTap: () {
        onTapFunction();
      },
      child: Card(
        color: const Color(0xff618989),
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 8.0,
          ),
          buildCard(
            'Database',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DataBase(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          buildCard(
            'Data Communication and Networking',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NetWork(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          buildCard(
            'Web Techonology II',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const WebDevelopment(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          buildCard(
            'Programming in C',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProgrammingC(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          buildCard(
            'Objected Oriented Programming',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const OoP(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          buildCard(
            'Software Process Model',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SpM(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          buildCard(
            'Recent Trends in Technology',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TechNology(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
