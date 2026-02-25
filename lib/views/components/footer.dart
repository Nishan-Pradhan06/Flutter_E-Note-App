import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      decoration: BoxDecoration(
        color: const Color(0xffE7F7F4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.check_circle_rounded, color: Color(0xff0F766E), size: 20),
          SizedBox(width: 8),
          Text(
            'End of Unit',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xff0F766E),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
