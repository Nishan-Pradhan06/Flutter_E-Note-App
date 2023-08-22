import 'package:flutter/material.dart';

class AbouT extends StatelessWidget {
  const AbouT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'About Us',
            style: TextStyle(fontFamily: 'Ubuntu'),
          ),
        ),
        body: const Center(
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
