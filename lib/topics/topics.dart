// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:computer_12/Contains/unit1.dart';
import 'package:computer_12/Contains/unit2.dart';
import 'package:computer_12/Contains/unit3.dart';
import 'package:computer_12/Contains/unit4.dart';
import 'package:computer_12/Contains/unit5.dart';
import 'package:computer_12/Contains/unit6.dart';
import 'package:computer_12/Contains/unit7.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

class TopicsList extends StatefulWidget {
  const TopicsList({super.key});

  @override
  State<TopicsList> createState() => _TopicsListState();
}

class _TopicsListState extends State<TopicsList> {
  // late InterstitialAd _interstitialAd;
  // bool _isAdLoaded = false;

  // void _initAd() {
  //   InterstitialAd.load(
  //     adUnitId: 'ca-app-pub-3940256099942544/1033173712',
  //     request: const AdRequest(),
  //     adLoadCallback: InterstitialAdLoadCallback(
  //       onAdLoaded: (InterstitialAd ad) {
  //         setState(() {
  //           _interstitialAd = ad;
  //           _isAdLoaded = true;
  //         });
  //         _interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
  //           onAdDismissedFullScreenContent: (ad) {
  //             _interstitialAd.dispose();
  //             _initAd(); // Load a new ad after it's dismissed
  //           },
  //           onAdFailedToShowFullScreenContent: (ad, error) {
  //             _interstitialAd.dispose();
  //             _initAd(); // Load a new ad after failure to show
  //           },
  //         );
  //       },
  //       onAdFailedToLoad: (error) {
  //         setState(() {
  //           _isAdLoaded = false;
  //         });
  //       },
  //     ),
  //   );
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _initAd(); // Call _initAd in initState or wherever appropriate in your code.
  // }

  // void onAdLoaded(InterstitialAd ad) {
  //   setState(() {
  //     _interstitialAd = ad;
  //     _isAdLoaded = true;
  //   });
  // }

/////
  ///start list view of topics.....
  Widget buildCard(String text, VoidCallback onTapFunction) {
    return GestureDetector(
      onTap: () {
        onTapFunction();
      },
      child: Card(
        color: const Color.fromARGB(255, 40, 103, 103),
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Ubuntu',
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
