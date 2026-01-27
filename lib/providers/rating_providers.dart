import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class RatingProvider with ChangeNotifier {
  void showRatingDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return RatingDialog(
          initialRating: 1.0,
          title: const Text(
            'Feedback',
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: true),
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
            "images/appLogo.png",
            height: 100.0,
            width: 100,
          ),
          starSize: 25,
          submitButtonText: 'Submit',
          commentHint: 'Tell Us Your Comments',
          onCancelled: () {},
          onSubmitted: (response) {
           
          },
        );
      },
    );
  }
}
