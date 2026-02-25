import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: const Text(
        'Computer Science',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      accountEmail: const Text(
        'Grade 12 New Curriculum Notes',
        style: TextStyle(
          color: Color(0xffDFFAF5),
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: ClipOval(
          child: Image.asset(
            'images/appLogo.png',
            width: 82,
            height: 82,
            fit: BoxFit.cover,
          ),
        ),
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[Color(0xff0F766E), Color(0xff115E59)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
