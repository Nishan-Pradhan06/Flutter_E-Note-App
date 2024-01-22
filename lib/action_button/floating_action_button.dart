import 'package:flutter/material.dart';
import 'package:computer_12/drawer/drawer.dart';
import 'package:computer_12/topics/topics.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ActionButton extends StatefulWidget {
  const ActionButton({super.key});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;
//////////advertisment code
  @override
  void initState() {
    super.initState();
    _initBannerAd();
  }

  _initBannerAd() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {},
      ),
      request: const AdRequest(),
    );
    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 40.0,
        backgroundColor: const Color.fromARGB(255, 17, 65, 65),
        centerTitle: true,
        title: const Text(
          'Computer Science',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Ubuntu',
          ),
        ),
      ),
      body: const SizedBox(
        child: TopicsList(),
      ),
      backgroundColor: const Color.fromARGB(130, 173, 223, 241),

      ///banner advertisment
      bottomNavigationBar: _isAdLoaded
          // ignore: sized_box_for_whitespace
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : const SizedBox(),
      drawer: const NavDrawer(),
    );
  }
}
