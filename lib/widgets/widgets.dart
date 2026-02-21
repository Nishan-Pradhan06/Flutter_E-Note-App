import 'package:flutter/material.dart';
import '../features/highlights/widgets/highlight_wrapper.dart';
import '../features/highlights/models/highlight_model.dart';

//headings
Column chapterHeading(String title) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ),
      const Text(
        'Sources: Buddha Publication Pvt. Ltd.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
      ),
    ],
  );
}

//contents of heading
class HeadingDetails extends StatelessWidget {
  final String contents;
  final String pageId;
  final TextStyle? style;
  final TextAlign textAlign;
  final HighlightModel? targetHighlight;

  const HeadingDetails({
    required this.contents,
    required this.pageId,
    this.style,
    this.textAlign = TextAlign.justify,
    this.targetHighlight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HighlightWrapper(
      pageId: pageId,
      content: contents,
      style: style ?? const TextStyle(fontSize: 17.0),
      textAlign: textAlign,
      targetHighlight: targetHighlight,
    );
  }
}

//topics
class ChapterTopics extends StatelessWidget {
  final String heading;

  const ChapterTopics({required this.heading, super.key});

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
  final String mediumHeading;
  const ChapterHeadingMedium({required this.mediumHeading, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      mediumHeading,
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
