import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'providers/privacy_policy_provider.dart';
import 'providers/rating_providers.dart';
import 'views/main_screen.dart';
import 'injection.dart';
import 'router.dart';
import 'features/highlights/blocs/highlight_bloc.dart';

/////initializing
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await configureDependencies();
  runApp(const MyApp());
}

// splash strating screen
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PrivacyPolicyProvider()),
        ChangeNotifierProvider(create: (_) => RatingProvider()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<HighlightBloc>()..add(const HighlightEvent.fetchAll()),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: router,
          theme: ThemeData(fontFamily: "Poppins", useMaterial3: true),
          debugShowCheckedModeBanner: false, //removes debug banner
          themeAnimationCurve: Curves.fastLinearToSlowEaseIn,
        ),
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
