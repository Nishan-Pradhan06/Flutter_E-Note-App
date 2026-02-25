// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

//headings
Widget chapterHeading() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: const Color(0xffE7F7F4),
      borderRadius: BorderRadius.circular(14),
      border: Border.all(color: const Color(0xffBDE7E1)),
    ),
    child: const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            'Database',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Color(0xff0F766E),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          'Sources: Buddha Publication Pvt. Ltd.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: Color(0xff115E59),
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    ),
  );
}

//contents of heading
class HeadingDetails extends StatelessWidget {
  final String contents;
  HeadingDetails({required this.contents, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SelectableText(
        contents,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontSize: 16.0,
          height: 1.5,
          color: Color(0xff1F2937),
        ),
      ),
    );
  }
}

//topics

class ChapterTopics extends StatelessWidget {
  final String heading;
  ChapterTopics({required this.heading, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffE8F5F4),
        border: const Border(
          left: BorderSide(color: Color(0xff0F766E), width: 4),
        ),
      ),
      child: Text(
        heading,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 21.0,
          color: Color(0xff0F766E),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ChapterHeadingMedium extends StatelessWidget {
  final String medium_heading;
  ChapterHeadingMedium({required this.medium_heading, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xffF1F5F9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        medium_heading,
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        style: const TextStyle(
          fontSize: 17.0,
          color: Color(0xff0F172A),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
