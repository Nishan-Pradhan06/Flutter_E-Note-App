import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/study_content.dart';
import '../../providers/study_center_provider.dart';

class StudyHubScreen extends StatelessWidget {
  const StudyHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final StudyCenterProvider provider = context.watch<StudyCenterProvider>();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Color(0xff0F766E), Color(0xff115E59)],
              ),
            ),
          ),
          title: const Text(
            'Study Hub',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xffCFF7F2),
            tabs: <Widget>[
              Tab(text: 'Quiz Practice'),
              Tab(text: 'Flashcards'),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: <Color>[Color(0xffE7F7F4), Color(0xffD9F2EF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Wrap(
                spacing: 20,
                runSpacing: 8,
                children: <Widget>[
                  _ProgressChip(
                    icon: Icons.quiz_rounded,
                    label: 'Solved',
                    value: '${provider.questionsAnswered}',
                  ),
                  _ProgressChip(
                    icon: Icons.check_circle_rounded,
                    label: 'Correct',
                    value: '${provider.correctAnswers}',
                  ),
                  _ProgressChip(
                    icon: Icons.track_changes_rounded,
                    label: 'Accuracy',
                    value: '${provider.quizAccuracy.toStringAsFixed(1)}%',
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: <Widget>[_QuizPracticeTab(), _FlashcardsTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QuizPracticeTab extends StatefulWidget {
  const _QuizPracticeTab();

  @override
  State<_QuizPracticeTab> createState() => _QuizPracticeTabState();
}

class _QuizPracticeTabState extends State<_QuizPracticeTab> {
  int _questionIndex = 0;
  int? _selectedOption;
  bool _submitted = false;

  void _submitAnswer() {
    if (_selectedOption == null || _submitted) {
      return;
    }
    final QuizQuestion question = quizQuestions[_questionIndex];
    final bool isCorrect = _selectedOption == question.correctIndex;
    context.read<StudyCenterProvider>().recordQuizAnswer(isCorrect: isCorrect);
    setState(() {
      _submitted = true;
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % quizQuestions.length;
      _selectedOption = null;
      _submitted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion question = quizQuestions[_questionIndex];
    final bool isCorrect = _selectedOption == question.correctIndex;
    return ListView(
      padding: const EdgeInsets.all(12),
      children: <Widget>[
        Text(
          'Question ${_questionIndex + 1} of ${quizQuestions.length}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              question.question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(height: 8),
        ...List<Widget>.generate(question.options.length, (int index) {
          final bool isSelected = _selectedOption == index;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ChoiceChip(
              label: Align(
                alignment: Alignment.centerLeft,
                child: Text(question.options[index]),
              ),
              selected: isSelected,
              onSelected: _submitted
                  ? null
                  : (bool _) {
                      setState(() {
                        _selectedOption = index;
                      });
                    },
              selectedColor: const Color(0xffD8ECEE),
              side: BorderSide(color: Colors.teal.shade100),
              showCheckmark: true,
            ),
          );
        }),
        const SizedBox(height: 8),
        FilledButton(
          onPressed: _selectedOption == null || _submitted
              ? null
              : _submitAnswer,
          child: const Text('Check Answer'),
        ),
        if (_submitted) ...<Widget>[
          const SizedBox(height: 12),
          Card(
            color: isCorrect
                ? const Color(0xffDDF5E2)
                : const Color(0xffFCE3E3),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                isCorrect
                    ? 'Correct. ${question.explanation}'
                    : 'Not correct. ${question.explanation}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 8),
          FilledButton.tonal(
            onPressed: _nextQuestion,
            child: const Text('Next Question'),
          ),
        ],
      ],
    );
  }
}

class _FlashcardsTab extends StatefulWidget {
  const _FlashcardsTab();

  @override
  State<_FlashcardsTab> createState() => _FlashcardsTabState();
}

class _FlashcardsTabState extends State<_FlashcardsTab> {
  int _activeIndex = 0;
  bool _showBack = false;

  void _changeCard(int delta) {
    setState(() {
      _activeIndex = (_activeIndex + delta) % flashcards.length;
      if (_activeIndex < 0) {
        _activeIndex = flashcards.length - 1;
      }
      _showBack = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final FlashcardItem card = flashcards[_activeIndex];
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Text(
            '${_activeIndex + 1}/${flashcards.length}  ${card.title}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showBack = !_showBack;
                });
              },
              child: Card(
                elevation: 0,
                color: const Color(0xffE7F7F4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 220),
                      child: Text(
                        _showBack ? card.back : card.front,
                        key: ValueKey<bool>(_showBack),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text('Tap card to flip'),
          const SizedBox(height: 12),
          Row(
            children: <Widget>[
              Expanded(
                child: OutlinedButton(
                  onPressed: () => _changeCard(-1),
                  child: const Text('Previous'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: FilledButton.tonal(
                  onPressed: () => _changeCard(1),
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProgressChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ProgressChip({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon, size: 16, color: const Color(0xff0F766E)),
          const SizedBox(width: 6),
          Text(
            '$label: $value',
            style: const TextStyle(
              color: Color(0xff0F766E),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
