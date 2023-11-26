import 'package:computer_12/action_button/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';

/////initializing
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

// splash strating screen
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Ubuntu",
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false, //removes debug banner
      themeAnimationCurve: Curves.fastLinearToSlowEaseIn,
      home: AnimatedSplashScreen(
        splash: Column(
          //starting splash  screen
          children: [
            Lottie.asset(
              'images/loading.json',
              height: 350,
              width: 200,
            ),
          ],
        ),
        nextScreen: const MainScreen(),
        splashIconSize: 350,
        duration: 4500,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}

///appbar title and bottom ad call
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ActionButton(),
    );
  }
}
