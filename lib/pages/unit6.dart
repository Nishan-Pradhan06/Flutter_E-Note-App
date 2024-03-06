// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/widgets.dart';

class SpM extends StatefulWidget {
  const SpM({super.key});

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
  );
  var linkText = const TextStyle(
    color: Colors.blue,
    fontSize: 14.0,
    fontStyle: FontStyle.italic,
  );

  /////main content
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          elevation: 25.0,
          backgroundColor: const Color.fromARGB(255, 97, 137, 137),
          centerTitle: true,
          title: const Text('Software Model Process'),
        ),
        body: PageView(
          children: [
            GestureDetector(
              child: CupertinoScrollbar(
                thickness: 8.0,
                thumbVisibility: true,
                thicknessWhileDragging: 10.0,
                child: InteractiveViewer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          chapterHeading(),
                          sourceLinks(),
                          const SizedBox(
                            height: 8.0,
                          ),
                          ChapterTopics(
                            heading: 'Software process model',
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          HeadingDetails(
                              contents:
                                  "The term system is derived from the Greek word ’systema’ which means took place together i.e system is an organized relationship among functioning of all units. It is a set or arrangement of things so related or connected as to form unity. In order to achieve common objective. In other word, system is a set element joint together for common objective. Thus, we can define a system as collection elements or components that are organized together for common purpose in order to enable the flow of information. System can be combination of people, device, process and method interrelated in such a fashion that they all work together for common goal. Some example of system are :\n1. Open system [example: biological system]\n2. Close system [example: nuclear weapon]\n3. Permanent system [example: government policy]\n4. Temporary system [example: small group research project in the laboratory]\n5. Natural system [example water cycle, ecosystem etc]\n6. Manufactured system [example: transportation, manufacturing system "),
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
                          HeadingDetails(
                              contents:
                                  "It involves capturing and assembling element that enter the system to be processed. For eg, the input to a calculator is the keypad. We press keys and the keypad sends an electric signal to be processed. "),
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
                          HeadingDetails(
                              contents:
                                  " It involves transformation processes that converts input into output. The input signal are changed according to the instruction supplied to generate an output."),
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
                          HeadingDetails(
                              contents:
                                  " It involves elements that have been produced by a transformation process to their final and ultimate destination. The output of a calculator is the screen."),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '4.Storage:',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          HeadingDetails(
                              contents:
                                  "Storing for future so that we can retrieve and access whenever required."),
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
                          HeadingDetails(
                              contents:
                                  "Monitoring the overall data and resources flow is known as controlling."),
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
                          HeadingDetails(
                              contents:
                                  "Feedback is the idea of monitoring current output of the system and comparing it with the system goal."),
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
                          HeadingDetails(
                              contents:
                                  "The system boundary defines the components that make up the system and scope of the organization which can be changed during system design."),
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
                          HeadingDetails(
                              contents:
                                  "Anything outside the system boundary that may directly or indirectly affect the system behavior is system environment."),
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
                          HeadingDetails(
                              contents:
                                  "System is defined as an integrations of objects of the real world environment joined in some regular interaction. The process of developing system by set of predefined steps is called system development life cycle. We need system development lifecycle due to following reasons. Computer based processing enables the same data to be processed in many ways according to the need.\n\n1. It is easier to handle large volume of data and deal with variety of information.\n2. It is easier to handle organization having distributed branches."),
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
                          HeadingDetails(
                              contents:
                                  "It is the preliminary way of handling the user request to change, improve or enhance existing system. The objective is to determine the user requirement, whether the request is valid and feasible. In this phase, problem definition is well understood, as system intended to meet the need of an organization. Thus, the first step in the design is to specify these needs for requirements. The top manager of an organization takes the basic decision to use a computer based information system for managing the organization. During this phase the objective of the system are identified. In general system Investigation studies the following questions. What is to be done in the future?\nHow to do it?\nWhen to do it?\nWho will do it?"),
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
                          HeadingDetails(
                              contents:
                                  "The process of analyzing a system and trying to find a way to modify it or create a new system to meet the users need. In other words, the investigation into  system operation and possible changes to the system is called system analysis. The system are made up of many interrelated task, change to any one of this task to the addition of new task may affect the existing one. Therefore, it is necessary to understand the system and its problem which will help to reduce the failure due to any risk and uncertainties. Main activities which are undertaken in this phase.\n1. Definition of output requirements such as content, layout design etc.\n2. Specification of input data such as source, format etc.\n3. Development of overall logic.\n4. Develop step by step algorithm and flowchart.\n5. Develop a general test requirement"),
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
                          HeadingDetails(
                              contents:
                                  "The process of analyzing whether the proposal is feasible or not is known as feasibility study. If it is not feasible then we have to look after other alternative. Feasibility study mainly focus on the demand of the system that affects the overall the development of the information system. Feasibility is how beneficial or practical the development of an information system will be to an organization.\n\nThe aim of feasibility study Are:-\n\n1. To determine whether the objective stated can be early attainable within a prescribe limitation and period.\n2. To define major problem areas so that system analyst can plan the strategy for the field investigation.\n3. To find areas where we can save time money and effort..\n4. To prepare cost estimation and time scheduling.\n5. To discover the areas where specialist knowledge are required."),
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
                          HeadingDetails(
                              contents:
                                  "The system development said to be economically feasible if the budget on proposed system doesn't ought weight, the estimated cost involve in acquiring, installing and operating it. Cost can be one time or continuing and  can occur at various time during project development and use. It mainly measures cost, savings, and benefits. During economic feasibility the cost of the following things are to be measured..\n1. People including IT staff and user.\n2. Hardware and equipmen.\n3. Softwar.\n4. Formal and informal trainin.\n5. License and fee.\n6. Facility cost"),
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
                          HeadingDetails(
                              contents:
                                  "A system development is said to be schedule feasible if time required to accomplish the project doesn't cross the proposed deadline. It is called schedule feasibility. The schedule feasibility also depends upon available manpower and economical condition as well. In practice, time period of project completion should be always less than or equal to time required then proposed time, then only the system will be schedule feasible."),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'c) Technical feasibility:',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          HeadingDetails(
                            contents:
                                "A system development is said to be technically feasible if the organization has the resources to develop or purchase, install and operate the system. It measures the availability of appropriate manpower required to accomplish the project. If the manpower used are not technical or the work performance of the technical manpower are not experienced the entire system will be certainly insufficient and this will distract the achievement of its goals and objectives, Technical feasibility measures following things.\n1. Does the company have the need of technical expertise? If not can it be acquired ?\n2. Does the company have necessary hardware, software and network resources?",
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const ChapterHeadingMedium(
                            medium_heading: 'd) Operational feasibility:',
                          ),
                          HeadingDetails(
                            contents:
                                'A system that has operational feasibility is one that will be used effectively after it has been developed. If user have difficulty with a new system it will not produce the expected benefit. Operational feasibility depends on several issues. Some are performance of employees, information, economy, control, efficiency and service. A system which is operationally feasible will win it day to day activities smoothly without any delay and disturbance.',
                          ),
                          const ChapterHeadingMedium(
                              medium_heading: '4) System design: '),
                          HeadingDetails(
                            contents:
                                'System design is the process of creating alternative solutions to satisfy the investigated goals, evaluating the choices and drawing up the specification for the chosen alternative. Design begins after the study team has analyzed the current procedure. Since many factor have been bearing on the design process, it can be challenging. After analyzing the current system the job of the designer is to decide whether the benefits and possible savings expected from design alternative out weigh the cost. There are several designing tool. Some of them are algorithm, flowchart, ER diagram etc,',
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const ChapterHeadingMedium(
                              medium_heading: 'Algorithm'),
                          HeadingDetails(
                              contents:
                                  'The sequential system steps  written in order to solve a particular problem is known as algorithm. Eg, Algorithm to find greatest number among two numbers.'),
                          HeadingDetails(
                            contents:
                                'Step 1: Start\nStep 2: Enter any two number (a, b)\nStep 3: Check whether (a>b)\n\t\t\t\t\t\t\t\t\t\t\tIf true: Go to step 4 and stop\n\t\t\t\t\t\t\t\t\t\t\tIf false: Go to step 5 and stop\nStep 4: Display greatest number is ‘a’\nStep 5: Display greatest number is ‘b’\nStep 6: Stop',
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const ChapterHeadingMedium(
                              medium_heading: 'Flowchart'),
                          HeadingDetails(
                            contents:
                                ' The diagrammatic representations of steps involved while solving a particular problem is called flowchart.',
                          ),
                          const ChapterHeadingMedium(
                              medium_heading:
                                  '5) System Development (Coding): '),
                          HeadingDetails(
                            contents:
                                'Coding the process of writing programs using actual programming language. In the phase solutions are created using real program code. In general, the system design needs to be implemented to make it a workable system. This demands the coding of design into computer language i.e. programming language (machine level language, high level language, assembly language). This is also called the programming phase in which the programmer converts the program specification into computer instruction, which we refer to as program. The programs co-ordinate the data movement and control the entire process in a system. A well written code reduces the testing and maintenance effort. This helps in fast development, maintenance and future changes if required programming tools like compiler, interpreter and languages like C, C++, Java script, PHP etc are used for coding. With respect to the type of application, appropriate programming language should be chosen.',
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const ChapterHeadingMedium(
                              medium_heading: '6) System Testing :'),
                          HeadingDetails(
                            contents:
                                "This steps includes whether the developed system can fulfill the user requirement or not. The testing is the process of validating the correctness of program. It's objective is to demonstrate that the program meets its designed specification. It is an investigation conducted to provide stake holder with information about the quality of the product or service under test. Some of the objective of system testing are :\n\n1. To check whether developed system fulfills the user requirement or not.\n2. To check whether developed system works as expected.",
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const ChapterHeadingMedium(
                              medium_heading:
                                  'Some testing methods are:\na) Black box testing:'),
                          HeadingDetails(
                            contents:
                                'Black box testing treats the software as a black box without any knowledge of internal implementation. It is also called functional testing because it tests whether a system is functioning or not. Here in this type of testing several known input is provided and checked whether the system generates expected output or not.',
                          ),
                          const ChapterHeadingMedium(
                              medium_heading: 'b) White box testing:f'),
                          HeadingDetails(
                            contents:
                                'In white box testing, procedural details are checked logical path through the software and between several components are tested through codes, statements and syntax analysis. White box testing is used when the tester has to the internal data structure and algorithms including the code that implement this. It is also called glass box testing.',
                          ),
                          const ChapterHeadingMedium(
                              medium_heading: '7) System implementation: '),
                          HeadingDetails(
                              contents:
                                  'The main objective of this phase is to obtain an operational system fully documented. In the phase system are installed and tested with operational data. It also consist of implementation of the system into production environment and resolution of the problem identified in testing phase. Implementation generally refers to the use of newly developed system in practice. when the software appears to be running properly then we understand it is ready to implement. The main activities of implementation phase are:\n\n1. Testing and proving in all parts of system.\n2.Training of data processing and user staff to use the new system.\n3.Preparation of documentation of a system.\n4.Acquiring all necessary equipment & stationary.'),
                          const ChapterHeadingMedium(
                              medium_heading: '8) System maintenance: '),
                          HeadingDetails(
                            contents:
                                'When the system is implemented, maintenance and modification begins. like any system, there is an aging process that requires periodic maintenance of hardware and software. There may be need of new modification which are done in this phase. The software and hardware requires periodic maintenance to as to keep in tune with design specification and to innovate new ideas into the system. The different types of maintenance are:\n\n1. Corrective maintenance: It corrects the run-time error during the operation.\n2. Adaptive maintenance : It modifies or add new feature in the system according to the environmental change.\n3. Perfective maintenance. It makes the system perfect up to date and improve the life and efficiency of the system.',
                          ),
                          // ChapterHeadingMedium(medium_heading: '')
                          const SizedBox(
                            height: 6.0,
                          ),
                          ChapterTopics(heading: 'System Development Model'),
                          const ChapterHeadingMedium(
                              medium_heading: 'A) The waterfall Model: '),
                          HeadingDetails(
                              contents:
                                  'This model is some time called classic life cycle because it suggest a systematic sequential approach to software development that begins with customer specification of requirements and progress through planning, modeling, construction etc. It is an oldest type of model for software engineering. It takes the fundamental process activities of specification, development, validation and evolution & represents them as separate process phases such as requirements specification, software design, implementation testing and so on.'),
                          Image.asset("images/unit_6/sdlc.png", height: 350),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const ChapterHeadingMedium(
                              medium_heading:
                                  'a. Requirement analysis & definition:'),
                          HeadingDetails(
                              contents:
                                  " In this stage the system's services constrain and goals are established by consultation with system users. They are  defined in details and serve as system specification."),
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

  Center sourceLinks() {
    return Center(
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
    );
  }

  Padding chapterHeading() {
    return const Padding(
      padding: EdgeInsets.all(2.0),
      child: Text(
        "Unit 6",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
