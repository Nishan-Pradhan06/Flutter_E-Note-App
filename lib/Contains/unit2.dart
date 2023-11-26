// import 'package:computer_12/Contains/unit3.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../strings/string_unit2.dart';

class NetWork extends StatefulWidget {
  const NetWork({super.key});

  @override
  State<NetWork> createState() => _NetWorkState();
}

class _NetWorkState extends State<NetWork> {
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
          backgroundColor: const Color.fromARGB(255, 40, 103, 103),
          centerTitle: true,
          title: Text(
            titleText,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              topics,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            sources,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          //headline topics
                          Text(
                            headline1,
                            textAlign: TextAlign.start,
                            style: headlineText,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          SelectableText(
                            pragraph1,
                            textAlign: TextAlign.justify,
                            style: pragraphStyleText,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            headline2,
                            textAlign: TextAlign.start,
                            style: headlineText,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          SelectableText(
                            pragraph2,
                            style: pragraphStyleText,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            point1,
                            style: pointStyleText,
                          ),
                          SelectableText(
                            point1Explanations,
                            textAlign: TextAlign.justify,
                            style: pragraphStyleText,
                          ),
                          Image.asset("images/unit_2/simplex.jpg"),
                          Text(
                            exmaple1,
                            textAlign: TextAlign.center,
                            style: pragraphStyleText,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            point2,
                            style: headlineText,
                          ),

                          SelectableText(
                            point2Explanations,
                            textAlign: TextAlign.justify,
                            style: pragraphStyleText,
                          ),
                          Image.asset("images/unit_2/half-duplex.jpg"),
                          const Text(
                            '',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'ubuntu',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            example2,
                            textAlign: TextAlign.center,
                            style: pragraphStyleText,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            point3,
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: headlineText,
                          ),
                          SelectableText(
                            point3Explanations,
                            textAlign: TextAlign.justify,
                            style: pragraphStyleText,
                          ),
                          Image.asset("images/unit_2/full-duplex.jpg"),
                          Text(
                            example3,
                            textAlign: TextAlign.center,
                            style: pragraphStyleText,
                          ),

                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            headline3,
                            style: headlineText,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          SelectableText(
                            pragraph3,
                            textAlign: TextAlign.justify,
                            style: pragraphStyleText,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            h4,
                            textAlign: TextAlign.left,
                            style: headlineText,
                          ),

                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            p4,
                            textAlign: TextAlign.left,
                            style: pointStyleText,
                          ),

                          const SizedBox(
                            height: 6.0,
                          ),
                          SelectableText(
                            p5,
                            textAlign: TextAlign.justify,
                            style: pragraphStyleText,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'b. Faster and cheaper communication',
                            style: pointStyleText,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "Communication in modern days has become very faster and cheaper to send information letters, attach files, perform voice chat and video conference with almost free cost with the help of network. ",
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
                            'c. Centralized Control',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "All network resources such as computer printers, file, database etc can be managed and controlled by a cetnral connecting computer also known as the server. So, any rules, privilages, security measures that are necessary in the network can be automatically implemented to the computers and other device from system.",
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
                            'd. Backup and Recover',
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
                          const SelectableText(
                            "Server is used to keep data as backup. It maintains backup of individuals computer information. So, if only data files are lost in any computer, it is possible to restore them form the server.",
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
                            'e. Remote and Mobile Access',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Demerits of Computer Network',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'a. Expensive',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "In order to install computer network, we require some extra cost purchase networking devices such as hubs, switch, router etc. Networking equipemtns and networking software are expensive too.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'b. Security Problems',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "Network security is the most challenging job for network administrator in order to project network resources form unauthorized users and physical destructions.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'c. Needs Techincal Person',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "It is very difficult to install and opreate good compuer network. In order to manage computer network, the orgainzation needs network, the organization needs network specialist. So, it is very expensive for an organization to hire network specialist. ",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Communications System',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ubuntu',
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "Communication system is a system designed to send information from a scource generating that information to one (Point ot point communication) or more (boardcasting) receivers of that information. Example of communication are the telephone, line, telegraphy, radio etc.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Basic Element of Data communication System',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ubuntu',
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'a. Message:',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "The message is data or information to be communicated and it is in the form of text, number, picture, audio and video.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'b.Sender',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "The sender device sends the message to the receiver and it can be computer, workstation or any networking devices.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'c.Receiver',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "The receiver device receive the message form the medium and it can be computer workstation, or any networking devices.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'd. Transmission Medium',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "The transmission medium is physical connectin in which a message can travel form sender to receiver and vice-versa.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'e. Protocols',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "A protocols is a set of common rules that manages the data communication, iwthiut protocols two devices can be connected but not be communicated. It is represents an agreement among the different communication devices in a network.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Types Of Computer Network',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ubuntu',
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "There are three types of Computer Network: -\ni) LAN\nii) WAN\niii) MAN",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'a. Local Area Network(LAN)',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "A Local Area Network(LAN) is privately owned small sized network. It spans only in small geographical area such as within a room, office, buildings or up to few km(2km to 3km). It connects the network resources, such as computers, faxes, printers, and various networking devices.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Features of Local Area Network (LAN)',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "i) LAN is small privately owned network and covers only few kilometers(up to 3 km).\nii) It has higher speed data transfer rate maximum up to 1000Mbps i.e. Gbps.\niii) It is highly secured network and it has least eror rate than others.\niv) It is least expensive type of network become it requires least expensive devices such as NIC, HUB, Bridge etc.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'b.Metropolitan Area Network(MAN)',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "A Metropolitan Area Network (MAN) can be either public or privately owned network. Its size is bigger than LAN and smalller than WAN. It spans within one metropolitan city or large geographical area. It can connect large number of computers and hetrogeneous multiple LANs within a city maximum up to 100km.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Features of Metropolitan Area Network (MAN)',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "i) MAN is complex and hetrogeneous type of network and it may be either public or privately own.\nii) The size of MAN is bigger than LAN and it covers maximum up to 100km.\niii) It uses different types of media such as coaxial cable, optical fiber, microwave etc.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'c.Wide Area Network(WAN)',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "A Wide Area network (WAN) is basically public type hetrogeneous network. It is the largest sized network and connects millions of computer, thousand of LANs, hundreds of MANs around the countries, continents and even the whole world.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Features of Wide Area Network (WAN)',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "i) WAN is basically public netwoek that cover millions of kilometers around the world.\nii) It has low speed data transfer 64Kbps to 10 Mbps or more.\niii)  It is less secured network and it has highest error rate.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Computer Network',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ubuntu',
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "Network Topologies refers the physical structure of a network that deals with how the computers are interconnected by using cabling system. It shows the geometrical representation of all the links and linking devices, also called nodes. The main objective of the network topology is to find out the most economical and efficient way of transmission channel. The most common LAN topologies are bus, star, ring, tree, mesh and hybrid.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Bus Topology',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 19.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "Bus topology is a network setup where each computer and network device is connected to a single cable or backbone. Computers are connected to a single continuous cable that is called bus. A bus must be terminated on both sides to prevent signal bounce and computers are connected to the bus with the help of drop line and T-connector.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Advantages of Bus Topology',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "i)It is simple and easy to setup and extend the network.\nii)It is inexpensive topology because it requires less amount of cable and no additional network devies.\niii) If any computer in the network downs, then it does not affect other computers.\niv) It is more flexible because we can easily connect and disconnect any number of computer in the bus.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Disadvantages',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "i)Data traffic is very high in bus so there may be chances of data collision.\nii) The length of bus should be small otherwise the performance of the network goes down.\niii) If there is problem in bus then the entire network goes down.\niv) It is very difficult to find out the fault in the bus.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Star Topology',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 19.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            'Star topology is a network topology in which each network component is physically connected to a central node such as a router, hub or switch.Many home networks use the star topology. A star network features a central connection point called a "hub node" that may be a network hub, switch or router. Devices typically connect to the hub with Unshielded Twisted Pair (UTP) Ethernet.',
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Advantages',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "i) It is simple and easy to setup re-configuration.\nii) It is flexible to connect new computer and emove existing computer in the network.\niii) It is very easy to find out fault because of the use of hub or switch.\niv) If any computer in the network goes down, then other computer can continue their functions.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Disadvantages',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "i)It requires very large amount of cables.\nii) It is expensive topology because of cables and networking devie hub or switch.\niii) If there is problem in central device hub or switch then the entire network will be down.\niv) The data traffic is high in central device hub so there may be chances of data collision.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Ring Topology',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 19.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            'A ring topology is a network configuration where device connections create a circular data path. Each networked device is connected to two others, like points on a circle. Together, devices in a ring topology are referred to as a ring network. In a ring network, every device has exactly two neighbors for communication purposes. All messages travel through a ring in the same direction (either "clockwise" or "counterclockwise"). A failure in any cable or device breaks the loop and can take down the entire network.',
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Advantages',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "i) It is simple and inexpensive topology.\nii) There is less chance of data collision because of unidirectional data transmission.\niii) There is no server so each computer has equal access facilities to the resources..\niv) Its performance is better than bus topology for small size network.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Disadvantages',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "i) It is not flexible topology so it is difficult for adding and removing new nodes.\nii) It is not suitable for large size network (not more than 10 nodes).\niii) If there is problem in any computer or connection then the entire network goes down.\niv) It is very difficult to find out the errors in the network.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Network Architecture',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ubuntu',
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "The network architecture refers to various services provided by the network such as how data is transmitted from one computer to another, how services can be implemented and how they are interconnected using various protoclos.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Types of Network Architecture',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "i) Client Server Network Architecture\nii)  Peer to Peer Network Architectur",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Client Server Network Architecture ',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            "In this architecture, there are two types of computer, one is server and the other is client. Server is the main computer in a network that controls, manages and provides varrious services to the clients such as print sercer, file server, database server, mail server and web browser.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Advantages of CSNA',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "i) It is easier for centralized administration, controlling and monitoring and the entire network from server.\nii) It is provides centralized backup and recovery features so it is considered as more secure and reliable architecture\niii) It is easier for managing the large size network (More than 10 Computers).",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Peer to Peer Network Architecture',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "In this architecture, each workstation can have equal capabilities and resposibilities in a network. There is no server, each workstation acts like server as well as client. Message is transmtted from one workstation to another workstation in one to one basis by making peer.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Advantages Of Peer to Peer Network Architecture',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "i) It has simple architecture and easy to install.\nii) It is suitable for small sized network which has maxmium to 10 nodes.\niii) Each node has equal privileges to access the resources of its own and other nodes connected to the network.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Transmission Media',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 21.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ubuntu',
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const SelectableText(
                            "Transmission Media refers to the physical connection through which data are transmitted between sender and receiver devices.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Types of Transmission Media',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "i) Bounded Media\nii) Unbounded Media",
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'i) Bounded Media',
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
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
                            'Bounded Transmission Media use "Cabling" system that guides the data signals along a specfic path.\nThe most common guided path media are: -\n\ni) Twisted Pair Cable\nii) Coaxial Cable\niii) Optical Fiber Cable ',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'ii) Unbounded Media',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "Transmission Media which do not use any physical connection betwwen two community devices are called unbounded media or unguided media or wireless media. Such type of media use radio waves, Mircrowaves and satellite.\nIt is classified into three media:-\n\ni) Radio wave\nii) MicroWave\niii) Satellite",
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Difference Between internet and intrane',
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
                          Image.asset("images/unit_2/internet_intranet.jpg"),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'OSI Reference Model',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "An OSI reference model of network is ISO certified model that entirely describes how information is transmitted from an application of one computer to  another application of other computer. International Standard Organization (ISO) is a multinatinal body committed for the worldwide standardization of products, services and businesses.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '1. Physical Layer',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "It is responsible for transmmiting raw bits from one node to another over communication channel. So it defines the mechanical, eletrical, functional and procedural standards for the physical transmission of data over the communication medium.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '2. Data Link Layer',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "It is responsible for moving frames from one node to another node. It provides different facilities such as physical addressing, data framing, flow control, error control, access control etc. It is also helps to detect errors that may occur in the physical layer.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const Text(
                            '3. Network Layer',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "It is responsible for delivery of packets from source host to destination host. It provides different facilities such as logical addressing, routing, etc. It is the agent for establishing connection between heterogeneous networking systems. It also includes operational control procedures for inter-network  communication as well as routing information through multiple networks.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '4. Trasnport Layer',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "It is responsible for delivery of message from one applicaton to another application. It provides different facilities such as services point addressing, segmentation, reassembly, connection control, flow control, error control, etc. It divides the message into  blocks and transport them.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const Text(
                            '5. Session Layer',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "The session layer is responsible for dilog control and synchronization between two devices. This layer provides the mechanism for organizing and structuring interaction between two applications or devices.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            '6. Presentation Layer',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "It is concerned with the syntax and semantics of the information transmitted. It is also responsible for representation of the data to the end user or application. It includes data connection and code translation(e.g. ASCII to EBCDIC)",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const Text(
                            '7. Application Layer',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Ubuntu",
                            ),
                          ),
                          const SelectableText(
                            "It allows aplication to access network services. It is completely user-oriented layer. Some of its functions are file transfer, accessing remote file, database, e-mail etc.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Internet Protocol Addressing:',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "The term protocol refers to the set of rules and procedures that govern the transmission of message over a physical networking medium. Protocols has three major components: syntax, semantics and timing. SSyntax defines grammatical rules, semantic defines logical meaning and the timing defines the delivery time for the synchronization. Computer can communicate with each ihter only if they use a same protocol. Some standard protocols are TCP/IP, HTTP, FTP, STMP, POP, CSMA/CD, TOKEN RING, ETHERNET etc.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'Types of Protocols: ',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "a) Transmission control protocols(TCP)\nb) Internet Protocol (IP)\nc) Simple Mail Transfer Protocol(SMTP)\nd) Post offive Protocol(POP)\ne) File Transfer Protocol(FTP)\nf) Hyper Text Transfer Protocol(HTTP)\ng)Hyper Text Transfer Protocol secure (HTTPs\nh) TELNET",
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 17.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            'IP address:',
                            textAlign: TextAlign.left,
                            // textDirection: TextDirection.ltr,
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
                            "The term protocol refers to the set of rules and procedures that govern the transmission of message over a physical networking medium. Protocols has three major components: syntax, semantics and timing. SSyntax defines grammatical rules, semantic defines logical meaning and the timing defines the delivery time for the synchronization. Computer can communicate with each ihter only if they use a same protocol. Some standard protocols are TCP/IP, HTTP, FTP, STMP, POP, CSMA/CD, TOKEN RING, ETHERNET etc.",
                            textAlign: TextAlign.justify,
                            // textDirection: TextDirection.ltr,
                            style: TextStyle(
                              fontFamily: "Ubuntu",
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
                              fontFamily: 'ubuntu',
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
