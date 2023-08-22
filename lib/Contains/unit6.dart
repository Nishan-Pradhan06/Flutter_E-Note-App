// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class SpM extends StatefulWidget {
  const SpM({Key? key}) : super(key: key);

  @override
  State<SpM> createState() => _SpMState();
}

class _SpMState extends State<SpM> {
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

// custom text style and text color
  var defaultText = const TextStyle(
    color: Colors.black,
    fontSize: 14.0,
    fontStyle: FontStyle.italic,
    fontFamily: "Ubuntu",
  );
  var linkText = const TextStyle(
    color: Colors.blue,
    fontSize: 14.0,
    fontStyle: FontStyle.italic,
    fontFamily: "Ubuntu",
  );

  /////main content
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          elevation: 25.0,
          backgroundColor: const Color.fromARGB(255, 40, 103, 103),
          centerTitle: true,
          title: const Text('Software Model Process'),
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
                              "Unit 6",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    style: defaultText,
                                    text: "Sources:",
                                  ),
                                  TextSpan(
                                    style: linkText,
                                    text: "readersnepal.com",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        var url =
                                            "https://readersnepal.com/e-notes/neb-new-course-class-12/computer-science-3";
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw "cannot thorw url";
                                        }
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Text(
                            "Software process model",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 21.0,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ubuntu'),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "The term system is derived from the Greek word ’systema’ which means took place together i.e system is an organized relationship among functioning of all units. It is a set or arrangement of things so related or connected as to form unity. In order to achieve common objective. In other word, system is a set element joint together for common objective. Thus, we can define a system as collection elements or components that are organized together for common purpose in order to enable the flow of information. System can be combination of people, device, process and method interrelated in such a fashion that they all work together for common goal. Some example of system are :\n1. Open system [example: biological system]\n2. Close system [example: nuclear weapon]\n3. Permanent system [example: government policy]\n4. Temporary system [example: small group research project in the laboratory]\n5. Natural system [example water cycle, ecosystem etc]\n6. Manufactured system [example: transportation, manufacturing system ",
                            textAlign: TextAlign.justify,
                            // toolbarOptions: ToolbarOptions(
                            //     copy: true, cut: true, selectAll: true),
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            "Basic interacting components of a system.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 21.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset("images/unit_6/component_system.png",
                              height: 120),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '1.Input: ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "It involves capturing and assembling element that enter the system to be processed. For eg, the input to a calculator is the keypad. We press keys and the keypad sends an electric signal to be processed. ",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '2. Process: ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            " It involves transformation processes that converts input into output. The input signal are changed according to the instruction supplied to generate an output.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '3.Output: ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            " It involves elements that have been produced by a transformation process to their final and ultimate destination. The output of a calculator is the screen.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '4.Storage:                                                                                                                   ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "Storing for future so that we can retrieve and access whenever required.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '5.Controlling:                                                                                                                   ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "Monitoring the overall data and resources flow is known as controlling.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '6.Feed back:                                                                                                                   ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "Feedback is the idea of monitoring current output of the system and comparing it with the system goal.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '7.System boundary:                                                                                                                   ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "The system boundary defines the components that make up the system and scope of the organization which can be changed during system design.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '8.System Environment:                                                                                                                   ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "Anything outside the system boundary that may directly or indirectly affect the system behavior is system environment.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            "System Development Life Cycle (SDLC)                                                                                                                                ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 21.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset("images/unit_6/software_develop.png",
                              height: 120),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "System is defined as an integrations of objects of the real world environment joined in some regular interaction. The process of developing system by set of predefined steps is called system development life cycle. We need system development lifecycle due to following reasons. Computer based processing enables the same data to be processed in many ways according to the need.\n\n1. It is easier to handle large volume of data and deal with variety of information.\n2. It is easier to handle organization having distributed branches.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '1) System investigation:                                                                                                                    ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "It is the preliminary way of handling the user request to change, improve or enhance existing system. The objective is to determine the user requirement, whether the request is valid and feasible. In this phase, problem definition is well understood, as system intended to meet the need of an organization. Thus, the first step in the design is to specify these needs for requirements. The top manager of an organization takes the basic decision to use a computer based information system for managing the organization. During this phase the objective of the system are identified. In general system Investigation studies the following questions. What is to be done in the future?\nHow to do it?\nWhen to do it?\nWho will do it?",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '2) System analysis:                                                                                                                     ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "The process of analyzing a system and trying to find a way to modify it or create a new system to meet the users need. In other words, the investigation into  system operation and possible changes to the system is called system analysis. The system are made up of many interrelated task, change to any one of this task to the addition of new task may affect the existing one. Therefore, it is necessary to understand the system and its problem which will help to reduce the failure due to any risk and uncertainties. Main activities which are undertaken in this phase.\n1. Definition of output requirements such as content, layout design etc.\n2. Specification of input data such as source, format etc.\n3. Development of overall logic.\n4. Develop step by step algorithm and flowchart.\n5. Develop a general test requirement",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '3) Feasibility studies (V.imp):                                                                                                                     ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "The process of analyzing whether the proposal is feasible or not is known as feasibility study. If it is not feasible then we have to look after other alternative. Feasibility study mainly focus on the demand of the system that affects the overall the development of the information system. Feasibility is how beneficial or practical the development of an information system will be to an organization.\n\nThe aim of feasibility study Are:-\n\n1. To determine whether the objective stated can be early attainable within a prescribe limitation and period.\n2. To define major problem areas so that system analyst can plan the strategy for the field investigation.\n3. To find areas where we can save time money and effort..\n4. To prepare cost estimation and time scheduling.\n5. To discover the areas where specialist knowledge are required.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Different types of feasibility study.                                                                                                                    ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'a) Economic feasibility:                                                                                                                    ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "The system development said to be economically feasible if the budget on proposed system doesn't ought weight, the estimated cost involve in acquiring, installing and operating it. Cost can be one time or continuing and  can occur at various time during project development and use. It mainly measures cost, savings, and benefits. During economic feasibility the cost of the following things are to be measured..\n1. People including IT staff and user.\n2. Hardware and equipmen.\n3. Softwar.\n4. Formal and informal trainin.\n5. License and fee.\n6. Facility cost",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'b) Schedule feasibility (time):',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "A system development is said to be schedule feasible if time required to accomplish the project doesn't cross the proposed deadline. It is called schedule feasibility. The schedule feasibility also depends upon available manpower and economical condition as well. In practice, time period of project completion should be always less than or equal to time required then proposed time, then only the system will be schedule feasible.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'c) Technical feasibility:                                                                                                                     ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "A system development is said to be technically feasible if the organization has the resources to develop or purchase, install and operate the system. It measures the availability of appropriate manpower required to accomplish the project. If the manpower used are not technical or the work performance of the technical manpower are not experienced the entire system will be certainly insufficient and this will distract the achievement of its goals and objectives, Technical feasibility measures following things.\n1. Does the company have the need of technical expertise? If not can it be acquired ?\n2. Does the company have necessary hardware, software and network resources?",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
