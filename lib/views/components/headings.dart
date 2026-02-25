import 'package:flutter/material.dart';

class TopicsHeadings extends StatelessWidget {
  final String unit;
  const TopicsHeadings({required this.unit, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xffE7F7F4),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xffBDE7E1)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              unit,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24.0,
                color: Color(0xff0F766E),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
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
}
