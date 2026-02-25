import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../constant/const.dart';

class PrivacyPolicyProvider with ChangeNotifier {
  Future<void> showPrivacyDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          contentPadding: const EdgeInsets.fromLTRB(20, 12, 20, 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          title: Row(
            children: <Widget>[
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: const Color(0xffE8F5F4),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.shield_outlined,
                  color: Color(0xff0F766E),
                  size: 18,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Text(
                  'Our Computer Science 12 app does not collect, store, or share personal data. It provides educational notes and does not require sensitive device permissions.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 13.5, height: 1.45),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Some learning content may reference external resources that follow their own privacy terms.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 13.5, height: 1.45),
                ),
                const SizedBox(height: 12),
                _policyLinkText(
                  beforeText: 'For questions, contact us via ',
                  linkText: 'Mail',
                  url: mail,
                ),
                const SizedBox(height: 8),
                _policyLinkText(
                  beforeText: 'To contribute content, visit our ',
                  linkText: 'GitHub repository',
                  url: gitHub,
                ),
                const SizedBox(height: 8),
                _policyLinkText(
                  beforeText: 'For more details, check our ',
                  linkText: 'website',
                  url: website,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Close',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _policyLinkText({
    required String beforeText,
    required String linkText,
    required String url,
  }) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 13.5,
          height: 1.45,
        ),
        children: <InlineSpan>[
          TextSpan(text: beforeText),
          TextSpan(
            text: linkText,
            style: const TextStyle(
              color: Color(0xff0F766E),
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await launchUrlString(url);
              },
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  }
}
