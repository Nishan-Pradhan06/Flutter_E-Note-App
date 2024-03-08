import 'package:computer_12/strings/string_unit2.dart';
import 'package:computer_12/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class OoP extends StatefulWidget {
  const OoP({super.key});

  @override
  State<OoP> createState() => _OoPState();
}

class _OoPState extends State<OoP> {
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

  //defining the textstyle
  var headlineText = const TextStyle(
    fontSize: 21.0,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.bold,
  );

  var pragraphStyleText = const TextStyle(
    color: Colors.black,
    fontSize: 17.0,
  );
  var pointStyleText = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 17.0,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 25.0,
          backgroundColor: const Color(0xff618989),
          centerTitle: true,
          title: const Text('Unit 5',
              style: TextStyle(fontSize: 30, color: Colors.white)),
        ),
        body: PageView(
          children: [
            GestureDetector(
              child: CupertinoScrollbar(
                thickness: 10.0,
                thumbVisibility: true,
                thicknessWhileDragging: 10.0,
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
                              "Object Oriented Programming",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            sources,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          ChapterTopics(
                              heading: 'Object Oriented Programming(OOP)'),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "Object orinted programming is a programming paradigm in which a program is viewed as a collection of discrete that are self contained collection of (data structures and functions) and that interact with other objects also. The fundamental idea behind OOP is to combine into a single unit both data and functions that operate on the data. Such a unit is called an object. So in OOP, every program is divided into set of objects and all programming activities revolve around the object. Each individual object has its own member function. An object can only access data of its own by the help of its own member function.",
                            textAlign: TextAlign.justify,
                            // ignore: deprecated_member_use
                            toolbarOptions: ToolbarOptions(
                                copy: true, cut: true, selectAll: true),
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ChapterTopics(heading: 'Characteristics of OOP'),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "1. Emphasis is on data rather than procedure.\n2. Programs are composed of number of objects.\n3. Functions which operate on data of an object are tied together.\n4. Objects can communicate with each another by the medium of member\nnctions.\n5. Data is hidden and cannot be accessed by external functions.\n6. New data and functions can be easily added whenever necessary.\n7. It follows bottom up approach in the process of programming.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ChapterTopics(heading: 'Features/Element of OOP'),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '1.Object: ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "Object is any entity, things or organization that exits in real world. it consists of two fundamentals characteristics: Its attributes and behaviours such as color, weight, age, types etc. and behaviours such as barking wagging tail etc. ",
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
                            '2.Class:',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "A class is the collection of similar objects which is defined as the template or prototype to define the common attributes and behaviour for all the objects of the class. There are areas of class: public, private and protected. so class is incroporates the concept of data hiding.",
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
                            '3.Data encapsulation',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "Encapsulation is a way of organizing data and function into a structure (called class) by concealing(hiding) way the object is implemented.",
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
                            '4.Data abstraction:',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "Data Abstraction refers to the conceptual boundaries of an object. so, abstraction is the act of representing essential features without including the background details.",
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
                            '5.Inheritance:  ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "The process of creating a new class from on exiting class in which objects of a new class inherits the existing class is known as inheritance.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          ChapterTopics(heading: 'Types of inheritance:'),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "There are following tyeps of inhertance:-",
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
                            'a. Single inheritance',
                            textAlign: TextAlign.left,
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
                          const SelectableText(
                            "The process of creating a class from an existing class is known as single inhertance. There is only one base and only one derived class in single inheritance.",
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
                            'b. Multiple inheritance',
                            textAlign: TextAlign.left,
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
                          const SelectableText(
                            "The proces of creating only one new from several existing classes is known as multiple inhertance.There is only one derived class and two or more base classes in multiple inheritance. ",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Image.asset("images/unit_5/eg11.png", height: 120),
                          const Text(
                            'c. Hierarchical inheritance',
                            textAlign: TextAlign.left,
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
                          const SelectableText(
                            "The process of creating several classes from only one class is called hierarchical inheritance. There are two or more derived classes and only one base class in hierarchical inheritance.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          Image.asset("images/unit_5/eg22.png", height: 120),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'd. Multilevel inheritance',
                            textAlign: TextAlign.left,
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
                          const SelectableText(
                            "The process of creating a new class  from another derived class is called multilevel inheritance.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Image.asset("images/unit_5/eg11.png", height: 120),
                          const Text(
                            'e. Hybrid inheritance',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "It is the combinatin of two or more types of inheritance.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          const Text(
                            '6. Polymorphism:',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "Polymorphism refres the ability of an object to take on different forms depending upon situations. Polymorphism is an important feature of OOP which refers to the ability of an object to take on different forms depending uopn. an opreations may  exhibit different behaviours in different instance. The behaviour depends upon the types of fata used in the opreation. It simplifies coding and reduces the rework involved in modifing and developing an application. It is extensively used in implementing inheritance.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ChapterTopics(heading: 'Advantages of OOP '),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "1. We can eliminate redudant codes by using inheritance feature of oop.\n2. It is very easy for managing complex and large sixe problem.\n3. The  most important is the reusability of codes by using the features inheritance.\n4. It follows bottom up approach.\n5. It is efficient for testing and implementation of the system.\n6. It takes less times for the testing and implementaion and maintain the software. ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ChapterTopics(heading: 'Disadvantages of OOP '),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "1. OOP demands more resource to get processed.\n2. It is beneficial only in long run while managing large software projects.\n3. Message passing between many objects is a complex process and difficult to trace and debug.\n4. OOP needs mastery in software engineering and also in programming methodology.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ChapterTopics(heading: 'Applications of OOP  '),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "1. Images processing and pattern Recognition.\n2. Computer Aided design and manufacturing.\n3. Object oriented database management systems.\n4. Internet and web based application.\n5. Mobile Computing.\n6. Data warehouse and data mining.\n7. Digital Electronics. ",
                            textAlign: TextAlign.left,
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
