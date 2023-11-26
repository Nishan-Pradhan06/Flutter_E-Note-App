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
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: MaterialApp(
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
      ),
    );
  }
  ////exiting the app

  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool exitApp = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Really ??"),
          content: const Text("Do you want to close the app??"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
    return exitApp == false;
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
