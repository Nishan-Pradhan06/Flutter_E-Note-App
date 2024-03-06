import 'package:computer_12/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ProgrammingC extends StatefulWidget {
  const ProgrammingC({super.key});

  @override
  State<ProgrammingC> createState() => _ProgrammingCState();
}

class _ProgrammingCState extends State<ProgrammingC> {
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 25.0,
          backgroundColor: const Color.fromARGB(255, 40, 103, 103),
          centerTitle: true,
          title: const Text('Programming in C'),
        ),
        body: PageView(
          children: [
            GestureDetector(
              child: CupertinoScrollbar(
                thickness: 5.0,
                thumbVisibility: true,
                thicknessWhileDragging: 8.0,
                child: InteractiveViewer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Unit 4',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ubuntu',
                              ),
                            ),
                          ),
                          const Text(
                            'Sources: Buddha Publication Pvt. Ltd.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'ubuntu',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Text(
                            'Programming Concept',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 21.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "The C language is one of the most powerful languages. In the begining due to the different architectures available, the programming had to learn different languages to create different types of application. The c language is highly efficent programming language and easy to understand. It has both the properties of high level language abd low level language, so it is also term as middle level languages or intermediate language between high level language and low level language.",
                            textAlign: TextAlign.justify,
                            // ignore: deprecated_member_use
                            toolbarOptions: ToolbarOptions(
                                copy: true, cut: true, selectAll: true),
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Image.asset("images/unit_4/eg_1.png"),
                          const Text(
                            'Control Structure',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "Control structure are those programming constructs which control the flow of program statements execution in a program. It also specifies the order of statement in program.\n \nMainly controls strucutre are classified into the following three categories:-\n\n1. Branching (Selective control strucutre)\n2. Looping (Repetitive control strucutre)\n3. Jumping (unconditional control structure)",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const EndingText(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: _isAdLoaded
            // ignore: sized_box_for_whitespace
            ? Container(
                height: _bannerAd.size.height.toDouble(),
                width: _bannerAd.size.width.toDouble(),
                child: AdWidget(ad: _bannerAd),
              )
            : const SizedBox(),
      ),
    );
  }
}
