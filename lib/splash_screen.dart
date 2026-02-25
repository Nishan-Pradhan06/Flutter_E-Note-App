import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class SplashScreen extends StatelessWidget {
  final SharedPreferences prefs;
  final bool seenOnboarding;
  const SplashScreen({
    super.key,
    required this.prefs,
    required this.seenOnboarding,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.network(
        'https://assets4.lottiefiles.com/packages/lf20_f4dmlwbs.json',
      ),
      nextScreen: MyApp(prefs: prefs, seenOnboarding: seenOnboarding),
    );
  }
}
