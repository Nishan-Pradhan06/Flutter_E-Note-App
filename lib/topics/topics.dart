// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:computer_12/Contains/unit1.dart';
import 'package:computer_12/Contains/unit2.dart';
import 'package:computer_12/Contains/unit3.dart';
import 'package:computer_12/Contains/unit4.dart';
import 'package:computer_12/Contains/unit5.dart';
import 'package:computer_12/Contains/unit6.dart';
import 'package:computer_12/Contains/unit7.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TopicsList extends StatelessWidget {
  TopicsList({Key? key}) : super(key: key) {
    _initAd();
  }
  ////
  ///advertisment

  late InterstitialAd _interstitialAd;
  // ignore: unused_field
  bool _isAdLoaded = false;
  void _initAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-3940256099942544/1033173712',
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          _interstitialAd = ad;
          _isAdLoaded = true;
          _interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              _interstitialAd.dispose();
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              _interstitialAd.dispose();
            },
          );
        },
        onAdFailedToLoad: (error) {},
      ),
    );
  }

  void onAdLoaded(InterstitialAd ad) {
    _interstitialAd = ad;
    _isAdLoaded = true;
  }

/////
  ///start list view of topics.....
  ///
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
          GestureDetector(
            onTap: () {
              if (_isAdLoaded) {
                _interstitialAd.show();
              }

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DataBase(),
                ),
              );
            },
            child: const Card(
              color: Color.fromARGB(255, 40, 103, 103),
              elevation: 25.0,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Center(
                  child: Text(
                    'Database',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          GestureDetector(
            onTap: () {
              // if (_isAdLoaded) {
              //   _interstitialAd.show();
              // }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NetWork(),
                ),
              );
            },
            child: const Card(
              color: Color.fromARGB(255, 40, 103, 103),
              elevation: 25.0,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Center(
                  child: Text(
                    'Data Communication and Networking',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          GestureDetector(
            onTap: () {
              // if (_isAdLoaded) {
              //   _interstitialAd.show();
              // }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const WebDevelopment(),
                ),
              );
            },
            child: const Card(
              color: Color.fromARGB(255, 40, 103, 103),
              elevation: 25.0,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Center(
                  child: Text(
                    'Web Techonology II',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          GestureDetector(
            onTap: () {
              // if (_isAdLoaded) {
              //   _interstitialAd.show();
              // }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProgrammingC(),
                ),
              );
            },
            child: const Card(
              color: Color.fromARGB(255, 40, 103, 103),
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Center(
                  child: Text(
                    'Programming in C',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          GestureDetector(
            onTap: () {
              // if (_isAdLoaded) {
              //   _interstitialAd.show();
              // }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const OoP(),
                ),
              );
            },
            child: const Card(
              color: Color.fromARGB(255, 40, 103, 103),
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Center(
                  child: Text(
                    'Objected Oriented Programming',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          GestureDetector(
            onTap: () {
              // if (_isAdLoaded) {
              //   _interstitialAd.show();
              // }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SpM(),
                ),
              );
            },
            child: const Card(
              color: Color.fromARGB(255, 40, 103, 103),
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Center(
                  child: Text(
                    'Software Process Model',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          GestureDetector(
            onTap: () {
              // if (_isAdLoaded) {
              //   _interstitialAd.show();
              // }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TechNology(),
                ),
              );
            },
            child: const Card(
              color: Color.fromARGB(255, 40, 103, 103),
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Center(
                  child: Text(
                    'Recent Trends in Technology',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
