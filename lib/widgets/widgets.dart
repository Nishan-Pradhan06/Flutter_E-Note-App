// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

//headings
Column chapterHeading() {
  return const Column(
    children: [
      Padding(
        padding: EdgeInsets.all(2.0),
        child: Text(
          'Unit 1',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Ubuntu',
          ),
        ),
      ),
      Text(
        'Sources: Buddha Publication Pvt. Ltd.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Ubuntu',
          fontStyle: FontStyle.italic,
        ),
      ),
    ],
  );
}

//ending text
class EndingText extends StatelessWidget {
  const EndingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '***END***',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,

      ),
    );
  }
}

//contents of heading
class HeadingDetails extends StatelessWidget {
  String contents;
  HeadingDetails({
    required this.contents,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      contents,
      textAlign: TextAlign.justify,
      // ignore: deprecated_member_use
      toolbarOptions:
          // ignore: deprecated_member_use
          const ToolbarOptions(copy: true, cut: true, selectAll: true),
      style: const TextStyle(

        fontSize: 16.0,
 
      ),
    );
  }
}
//topics

class ChapterTopics extends StatelessWidget {
  String heading;
  ChapterTopics({
    required this.heading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      textAlign: TextAlign.start,
      style: const TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 21.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class ChapterHeadingMedium extends StatelessWidget {
  final String medium_heading;
  const ChapterHeadingMedium({
    required this.medium_heading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      medium_heading,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
      style: const TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 17.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
