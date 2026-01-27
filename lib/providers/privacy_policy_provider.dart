import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../constant/const.dart';

class PrivacyPolicyProvider with ChangeNotifier {
  // Updated showPrivacyDialog method

  Future<void> showPrivacyDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "Privacy Policies",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: const TextStyle(
                        color: Colors.black), // default text style
                    children: [
                      const TextSpan(
                        text:
                            'Our Computer Science 12 app does not collect, store, or share any personal information. It provides notes from public websites and does not need any permissions or access to your device. Some content comes from other websites, and they may have their own privacy policies. If we update this policy, changes will be posted here.\nFor any questions, contact us at ',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        text: "Mail Us.",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            launchUrlString(mail);
                          },
                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: const TextStyle(
                        color: Colors.black), // default text style
                    children: [
                      const TextSpan(
                        text:
                            "\n\nIf you'd like to contribute to the app, you can do so through our ",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        text: "GitHub repository.",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            launchUrlString(gitHub);
                          },
                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: const TextStyle(
                        color: Colors.black), // default text style
                    children: [
                      const TextSpan(
                        text: "\n\nFor more information about app visit ",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        text: "Websites.",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            launchUrlString(website);
                          },
                      ),
                    ],
                  ),
                ),
              ],
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
