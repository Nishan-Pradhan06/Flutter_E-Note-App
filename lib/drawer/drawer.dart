// ignore_for_file: avoid_print, deprecated_member_use
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:share/share.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

//slide nav bar drawer
class NavDrawer extends StatefulWidget {
  const NavDrawer({super.key});

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  var defaultText = const TextStyle(
    color: Colors.black,
    fontSize: 14.0,
    fontFamily: "Poppins",
  );
  var linkText = TextStyle(
    color: Colors.blue[900],
    fontSize: 14.0,
    fontFamily: "Poppins",
  );

  ///raating dilogue box. libary
  void show() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.2),
          child: rateDilogPopUp(),
        );
      },
    );
  }

  RatingDialog rateDilogPopUp() {
    return RatingDialog(
      initialRating: 1.0,
      title: const Text(
        'Feedback',
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: true),
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      message: const Text(
        'Tap a star to set your rating. Add more description here if you want.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14),
      ),
      image: Image.asset(
        "images/icon_logo_app.png",
        height: 100.0,
        width: 100,
      ),
      starSize: 25,
      submitButtonText: 'Submit',
      commentHint: 'Tell Us Your Comments',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        print('rating:${response.rating},comment:${response.comment}');
      },
    );
  }

  /// main drawer
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Computer Science',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: const Text(
              'Grade 12 New Curriculam Course Notes',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              selectionColor: Colors.black,
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/icon_logo_app.png',
                  width: 95,
                  height: 95,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1635350181304-be3f00f5af76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // icons....
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: const Icon(Icons.home, color: Colors.black87),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();

                print('home');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: const Icon(Icons.share_rounded, color: Colors.black87),
              title: const Text(
                'Share',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Share.share(
                    'https://play.google.com/store/apps/details?id=com.instructivetech.testapp');
                print('share');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: const Icon(Icons.star_outlined, color: Colors.black87),
              title: const Text(
                'Rating',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                show();
                print('Rate');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading:
                  const Icon(Icons.lock_outline_rounded, color: Colors.black87),
              title: const Text(
                'Privacy Polices',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                privacyDilogBox(context);
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: const Icon(
                Icons.exit_to_app_rounded,
                color: Colors.black87,
              ),
              title: const Text(
                'Exit',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                  print('exit');
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> privacyDilogBox(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "Privacy Policies",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: defaultText,
                children: [
                  const TextSpan(
                    text:
                        "We prioritize your privacy. Notebook does not collect any personal data. Any information gathered is strictly limited to enhancing app functionality, such as device information and usage statistics. We do not store or share personally identifiable information with third parties. Our commitment to your privacy means we refrain from requesting or storing unnecessary personal details. While Notebook may include links to external sites, we do not assume responsibility for their privacy practices. Your data is safeguarded using industry-standard security measures. For any questions or concerns regarding our privacy policies. ",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    style: linkText,
                    text: "GITHUB",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        var url =
                            "https://github.com/Nishan-Pradhan06/Flutter_E-Note-App";
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
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
