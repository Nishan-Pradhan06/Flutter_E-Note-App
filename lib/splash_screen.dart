import 'package:computer_12/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.network(
          'https://assets4.lottiefiles.com/packages/lf20_f4dmlwbs.json'),
      nextScreen: const MyApp(),
    );
  }
}
