import 'package:flutter/material.dart';

class Qn extends StatelessWidget {
  const Qn({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'This app is design according needs of note which is link from readersnepal.com completely easy notes for student.',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
        ),
      ),
    );
  }
}
