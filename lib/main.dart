import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import 'providers/privacy_policy_provider.dart';
import 'providers/rating_providers.dart';
import 'providers/study_center_provider.dart';
import 'providers/onboarding_provider.dart';
import 'views/main_screen.dart';

/////initializing
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences? prefs;
  bool seenOnboarding = false;
  try {
    prefs = await SharedPreferences.getInstance();
    seenOnboarding = prefs.getBool('seen_onboarding') ?? false;
  } catch (e, st) {
    debugPrint('SharedPreferences init failed: $e');
    debugPrintStack(stackTrace: st);
    // fallback keeps app running; onboarding will use in-memory flag
  }
  await Firebase.initializeApp();
  MobileAds.instance.initialize();

  MobileAds.instance.updateRequestConfiguration(
    RequestConfiguration(
      testDeviceIds: [
        '67C8D413D2298AB432F08012E705A714',
      ], // your device ID from logs
    ),
  );

  // Force enable even in debug
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

  runApp(MyApp(prefs: prefs, seenOnboarding: seenOnboarding));
}

// splash strating screen
class MyApp extends StatelessWidget {
  final SharedPreferences? prefs;
  final bool seenOnboarding;
  const MyApp({super.key, required this.prefs, required this.seenOnboarding});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PrivacyPolicyProvider()),
        ChangeNotifierProvider(create: (_) => RatingProvider()),
        ChangeNotifierProvider(create: (_) => StudyCenterProvider()),
        ChangeNotifierProvider(
          create: (_) =>
              OnboardingProvider(prefs: prefs, seenOnboarding: seenOnboarding),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "Poppins",
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff0F766E),
            brightness: Brightness.light,
          ),
          scaffoldBackgroundColor: const Color(0xffF4FAFB),
          cardTheme: CardThemeData(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.teal.shade100),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.teal.shade100),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.teal.shade400, width: 1.4),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false, //removes debug banner
        themeAnimationCurve: Curves.fastLinearToSlowEaseIn,
        home: AnimatedSplashScreen(
          splash: Column(
            //starting splash  screen
            children: [
              Lottie.asset('images/loading.json', height: 350, width: 200),
            ],
          ),
          nextScreen: const MainScreen(),
          splashIconSize: 350,
          duration: 4500,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white,
        ),
        // const HomeView()
      ),
    );
  }
}

// /appbar title and bottom ad call
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ActionButton());
  }
}
