import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

class TechNology extends StatefulWidget {
  const TechNology({super.key});

  @override
  State<TechNology> createState() => _TechNologyState();
}

class _TechNologyState extends State<TechNology> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 25.0,
        backgroundColor: const Color(0xff618989),
        centerTitle: true,
        title: const Text('Unit 7',
            style: TextStyle(fontSize: 30, color: Colors.white)),
        toolbarHeight: 60.0,
      ),
      body: PageView(
        children: [
          GestureDetector(
            child: CupertinoScrollbar(
              ///scrollbar
              thickness: 10.0,
              thumbVisibility: true,
              radius: const Radius.circular(10.0),
              thicknessWhileDragging: 10.0, //scro//bar
              child: InteractiveViewer(
                ///starting contain
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'Recent Trend in Technology',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                style: defaultText,
                                text: "Sources: ",
                              ),
                              TextSpan(
                                style: linkText,
                                text: "readersnepal.com",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    var url =
                                        "https://readersnepal.com/e-notes/neb-new-course-class-12/computer-science-3";
                                    // ignore: deprecated_member_use
                                    if (await canLaunch(url)) {
                                      // ignore: deprecated_member_use
                                      await launch(url);
                                    } else {
                                      throw "cannot throw Url";
                                    }
                                  },
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "Sources: Buddha Publication Pvt. Ltd.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14.0,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "Ubuntu",
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                          'Artificial Intelligence',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 21.0,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Ubuntu",
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const SelectableText(
                          "Artificial intelligence (AI) refers to the simulation of human intelligence in machines that are programmed to think like humans and mimic their actions. It is a concept of giving human-like intelligence to the machines. Though the computers do their work faster and better than the human beings, the intelligence of them is zero because they just follow the set of instructions given by the user. In case of wrong instruction, they do wrong processing. It is because they do not have intelligence of their own. So, the scientists are in research of giving them artificial intelligence, so that they can understand the natural languages of the human beings and interact. They can express their feelings and many more.",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Types of Artificial Intelligence',
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
                          "1. Artificial Narrow Intelligence (ANI)\n2. Artificial General Intelligence (AGI)\n3. Artificial Super Intelligence (ASI)",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Features of Artificial Intelligence',
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
                          "1. Time saving\n2. Can be read any time and any where\n3. Course moves faster than traditional method\n4. Uniformity of content\n5. Data is hidden and cannot be accessed by external functions.\n6. Interactive online session",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Uses of Artificial Intelligence',
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
                          "1. Game Playing\n2. Expert System\n3. Pattern Recognition\n4. Natural Language Processing (NLP)\n5. Automated Operation\n6. Robotics",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Robotics',
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
                          "Robotics ia the branch of techonology that deals with the design, construction, opreation, structural disposition, manufacture and application of robots. It is the term used for the designing, constructing and using robots in various purposes. The term ‘robot’ was first used by Karel Capek in his play Rossum’s Universal Robots, published in 1920. Scientists are trying to give the human-like intelligence to the robots, so that they understand the natural languages and they can be able to interact with the humans to assist them. Transportation, exploration, surgery, bomb diffusion, etc. are some popular application of robots. They are especially used in the areas, which are full of risk.",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Essential characteristics of robot',
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
                          "1. Sensing\n2. Movement\n3. Energy\n4. Intelligence",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Virtual Reality',
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
                          "Virtual reality (VR) is a computer simulated or artificial environment that is created with software and presented to the user in such a way that the user believes and accepts it as a real environment. On a computer, virtual reality is primarily experienced through two of the five senses: sight and sound. \n\nThe simplest form of virtual reality is a 3-D image that can be explored interactively at a personal computer, usually by manipulating keys or the mouse so that the content of the image moves in some direction or zooms in or out. ",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Advantages of Virtual Reality',
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
                          "1. More than Real\n2. Safe Practice/Simulation\n3. Detailed\n4. Handy\n5. Increased Learning Possibilities",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Disadvantages of Virtual Reality',
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
                          "1. Cost\n2. Speed\n3. Productivity\n4. Performance\n5. Reliability\n6. Security",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Cloud Computing',
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
                          "The cloud computing is the delivery of computing services such as database, stroage, networking, software etc. over the internet to offer faster innovation, flexible resources. It helps for lowering the costs and inceases the efficiency of business. Cloud computing is more efficient way of delivering computing resources. With cloud computing, software and services environments are subscription-based - users pay a monthly fee instead of buying licenses. Multiple people can access a shared program or file and collaborate in real time from different locations. Organizations of every type, size and industry are using the cloud for many purposes such as data backup, email, disaster recovery, software development, testing, web applications and more.",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                          ),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Types of Cloud Computing',
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
                          "1. Public Cloud\n2. Private Cloud\n3. Hybrid Cloud\n4. Multi-Cloud ",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Types of Cloud Services',
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
                          "1. Infrastructure as a service (IaaS)\n2. Platform as a service (PaaS)\n3. Software as a service (SaaS)",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Benefits of Cloud Services',
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
                          "1. Cost\n2. Speed\n3. Productivity\n4. Performance\n5.Reliability\n6.Security",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Big Data',
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
                          "Big Data is a collection of huge volume of data which is growing exponentitally with time. The big data are huge and complex data which needs specialized tools to process and extract. It is difficult to porocess and store by traditional approach. It needs advanced models and tools and to process, store and extract.  ",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Types of BIg Data',
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
                          "1. Structured data\n2. Unstructured data\n3. Semi-Structured data",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Characteristics of Big Data',
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
                          "1. Volume\n2. Variety\n3. Velocity\n4. Variability",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          'Advantage of Big Data',
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
                          "1. Better decision-making\n2. Increased productivity\n3. Reduce costs\n4. Improved customer service\n5. Fraud detection\n6. Increased agility\n7. Greater innovation\n8. Faster speed to market",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          'Disadvantage of Big Data',
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
                          "1. Need for talent\n2. Need for cultural change\n3. Cybersecurity risks\n4. Rapid change\n5.Hardware needs\n6. Costs\n7. Difficulty integrating legacy systems ",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'E-learning',
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
                          "E-learning is the process of learning through the electronic media like computers. The concept of Distant Learning has become possible through the e-learning. One can get degree of a university through the e-learning. The CAL (Computer Assisted/Aided Learning) is an example of E-learning. Internet, Intranet, Extranet, Virtual Class room and Multimedia CD/DVD ROM are the tools used in E-learning.",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Advantage of E-Learning',
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
                          "1. Time saving\n2. Can be read any time and any where\n3. Course moves faster than traditional method\n4. Uniformity of content\n5. Data is hidden and cannot be accessed by external functions.\n6. Interactive online session",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'E-commerce',
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
                          "The commerce through the use of electronic media is called E-commerce. It is the most popular and highly used advantage of IT. Replacing the traditional method of account controlling, quality and quantity controlling, money transaction, official and industrial management, etc. by the computers and electronic machines are some popular concepts of E-commerce. ",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Types of E-commerce',
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
                          "1. Business-to-Business (B2B)\n2. Business-to-Customer (B2C)\n3. Consumer to consumer (C2C)\n4. Consumer to Business (C2B) ",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'E-Business',
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
                          "The process of performing business activities through the electronic media, especially Internet is called E-Business. It includes selling, buying and servicing customers and collaborating with the business partners, too. It uses web-based technology for the advertisements and for the improved business performance. Some examples of this system are ebay, amazon, Alibaba etc",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'E-Governance',
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
                          "The process of governing through the use of Electronic media is called E-Governance. The traditional governing system cannot reach to the remote or rural area and it cannot address the actual problem of them. It is centered in the urban area. So, the E-Governance has become a popular concept of governing. It uses electronic media like Internet, Intranet, Wireless Phone, E-voting, E-commerce, E-health service and E-education, etc to address the problem of the people. It increases the speed of working of Government.",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SelectableText(
                          "In other word, The way of performing governmental activities through internet. For instant, every citizen has to perform their daily governmental activities such as birth registration, tax payment, utilities bill payment etc. If these governmental activities are done through electronic means and media then, it is known as e-government. The major objective of e-government is to increase accountability, transparency, efficiency and which helps to reduce corruption.",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          'Types of E-Governance',
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
                          "1. Government to Citizens (G2C)\n2. Government to Employees (G2E)\n3. Government to Government (G2G)\n4. Government to Business (G2B)",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Challenges of E-government:',
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
                          "1. IT literacy\n2. Lack of co-ordination\n3. Training\n4. IT Policy",
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Importance  of E-government:',
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
                          "a. Promote awareness and dramatically improves the efficiency of the civil services.\nb. It will encourage public participation.\nc. It will create healthy business environment.\nd. It increases accountability, transparency, efficiency and which helps to reduce corruption.\ne. It allows to share knowledge and information betwee organizatio easily.",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'E-Medicine',
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
                          "Electronic medicine is a service of E-Government, which provides E-health services to the people. The use of computers for diagnosis of diseases, operations and research of medicine are the examples of E-Medicine. The way of performing medical activities through electronic means and media are e-medicine. Now a days, there are significant roles of modern tools and technologies in the field of medicine. For eg, Technologies such as X-rays, CT scan etc are used to diagnosis several critical diseases and illness. There are several websites which are particularly targeted toward medicine. These websites help user to find out the required information about their queries. One can check the health condition using electronic means and media.",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Advantage of E-Medicine ',
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
                          "1. Distance medical facilities can be provided to remote area.\n2. Drones can be used to supply medical equipment in needy area with in less time.\n3. Remote counseling is possible through e-medicine.\n4. Different high-tech tools and devices are used to diagnose several critical illnesses.",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Mobile Computing',
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
                          "Electronic medicine is a service of E-Government, which provides E-health services to the people. The use of computers for diagnosis of diseases, operations and research of medicine are the examples of E-Medicine. The way of performing medical activities through electronic means and media are e-medicine. Now a days, there are significant roles of modern tools and technologies in the field of medicine. For eg, Technologies such as X-rays, CT scan etc are used to diagnosis several critical diseases and illness. There are several websites which are particularly targeted toward medicine. These websites help user to find out the required information about their queries. One can check the health condition using electronic means and media.",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Advantage of Mobile Computing',
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
                          "1. Protable.\n2. Social interactivity\n3. Context sensitivity\n4. Connectivity ability\n5. Commonly used\n6. Quick service\n7. Easy and quick enhancement",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Disadvantage of Mobile Computing',
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
                          "1. Insufficient bandwidth\n2. Security standards\n3. Power consumption\n4. Human interface with device",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Concept of IOT',
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
                          "The internet of things (IoT) is a system of interrelated computing devices, mechanical and digital machines, objects, animals or people that are provided with unique identifiers and the ability to transfer data over a network without requiring human-to-human-to computer interation.",
                          textAlign: TextAlign.justify,
                          // ignore: deprecated_member_use
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true),
                          style: TextStyle(
                            fontSize: 17.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Advantage of IoT',
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
                          "1. Ability to access information from anywhere at any time on any device\n2. Improve communication between connected devices and users\n3. Transferring data packets over a connected network saving time and money\n4.Automating tasks helping to improve the quality of a business's services",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          'Disadvantage of IoT',
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
                          "1.As the number of connected devices increases and more information is shared between devices, high risk with the hackers.\n2.Massive numbers of data to be processed.\n3.The structure is complex to communicate among the devices because of massive number of devices.",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          '***END***',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
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
    );
  }
}
