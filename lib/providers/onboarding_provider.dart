import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingProvider extends ChangeNotifier {
  OnboardingProvider({
    required SharedPreferences? prefs,
    required bool seenOnboarding,
  }) : _prefs = prefs,
       _seen = seenOnboarding;

  final SharedPreferences? _prefs;
  bool _seen;

  bool get hasSeenOnboarding => _seen;

  Future<void> markSeen() async {
    _seen = true;
    await _prefs?.setBool('seen_onboarding', true);
    notifyListeners();
  }
}
