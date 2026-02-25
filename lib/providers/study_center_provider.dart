import 'package:flutter/foundation.dart';

class StudyCenterProvider extends ChangeNotifier {
  final Set<String> _bookmarkedTopics = <String>{};
  final Set<String> _openedTopics = <String>{};
  int _questionsAnswered = 0;
  int _correctAnswers = 0;

  Set<String> get bookmarkedTopics => _bookmarkedTopics;
  Set<String> get openedTopics => _openedTopics;
  int get questionsAnswered => _questionsAnswered;
  int get correctAnswers => _correctAnswers;

  double get quizAccuracy {
    if (_questionsAnswered == 0) {
      return 0;
    }
    return (_correctAnswers / _questionsAnswered) * 100;
  }

  void toggleBookmark(String topicId) {
    if (_bookmarkedTopics.contains(topicId)) {
      _bookmarkedTopics.remove(topicId);
    } else {
      _bookmarkedTopics.add(topicId);
    }
    notifyListeners();
  }

  void markTopicOpened(String topicId) {
    if (_openedTopics.add(topicId)) {
      notifyListeners();
    }
  }

  void recordQuizAnswer({required bool isCorrect}) {
    _questionsAnswered += 1;
    if (isCorrect) {
      _correctAnswers += 1;
    }
    notifyListeners();
  }
}
