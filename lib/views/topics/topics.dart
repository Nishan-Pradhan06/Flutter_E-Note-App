import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../ad/native_ad.dart';
import '../../data/study_content.dart';
import '../../providers/study_center_provider.dart';
import '../../providers/onboarding_provider.dart';
import '../study/study_hub_screen.dart';

class TopicsList extends StatefulWidget {
  const TopicsList({super.key});

  @override
  State<TopicsList> createState() => _TopicsListState();
}

class _TopicsListState extends State<TopicsList> {
  String _searchQuery = '';
  bool _onboardingShown = false;

  IconData _topicIcon(String id) {
    switch (id) {
      case 'unit1':
        return Icons.storage_rounded;
      case 'unit2':
        return Icons.router_rounded;
      case 'unit3':
        return Icons.language_rounded;
      case 'unit4':
        return Icons.code_rounded;
      case 'unit5':
        return Icons.account_tree_rounded;
      case 'unit6':
        return Icons.settings_suggest_rounded;
      case 'unit7':
        return Icons.auto_awesome_rounded;
      default:
        return Icons.menu_book_rounded;
    }
  }

  List<TopicEntry> get _filteredTopics {
    if (_searchQuery.trim().isEmpty) {
      return topicEntries;
    }
    final String query = _searchQuery.toLowerCase().trim();
    return topicEntries
        .where(
          (TopicEntry topic) =>
              topic.title.toLowerCase().contains(query) ||
              topic.shortDescription.toLowerCase().contains(query),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final StudyCenterProvider studyProvider = context
        .watch<StudyCenterProvider>();
    final OnboardingProvider onboarding = context.watch<OnboardingProvider>();
    final List<TopicEntry> topics = _filteredTopics;

    final double openedProgress = topicEntries.isEmpty
        ? 0
        : studyProvider.openedTopics.length / topicEntries.length;

    if (!_onboardingShown &&
        !onboarding.hasSeenOnboarding &&
        WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed) {
      _onboardingShown = true;
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => _showOnboardingSheet(),
      );
    }

    final List<Widget> contentWidgets = <Widget>[
      _QuickActionsRow(onboardingSeen: onboarding.hasSeenOnboarding),
      const SizedBox(height: 10),
      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: <Color>[Color(0xff0F766E), Color(0xff0D9488)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: const Color(0xff0F766E).withValues(alpha: 0.24),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Row(
              children: <Widget>[
                Icon(Icons.school_rounded, color: Colors.white, size: 26),
                SizedBox(width: 8),
                Text(
                  'Study Dashboard',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Track progress, practice quizzes, and revise with flashcards.',
              style: TextStyle(color: Color(0xffE8FFFC), fontSize: 14),
            ),
            const SizedBox(height: 14),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: LinearProgressIndicator(
                minHeight: 8,
                value: openedProgress,
                backgroundColor: Colors.white24,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: <Widget>[
                _StatPill(
                  label: 'Opened',
                  value:
                      '${studyProvider.openedTopics.length}/${topicEntries.length}',
                ),
                _StatPill(
                  label: 'Bookmarked',
                  value: '${studyProvider.bookmarkedTopics.length}',
                ),
                _StatPill(
                  label: 'Accuracy',
                  value: '${studyProvider.quizAccuracy.toStringAsFixed(0)}%',
                ),
              ],
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xff0F766E),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const StudyHubScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.bolt_rounded),
              label: const Text('Open Study Hub'),
            ),
          ],
        ),
      ),
      const SizedBox(height: 12),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: <Widget>[
              const Icon(Icons.search_rounded, color: Color(0xff0F766E)),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  'Find a topic quickly',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                '${topics.length} units',
                style: const TextStyle(color: Color(0xff0F766E)),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 12),
      TextField(
        decoration: const InputDecoration(
          hintText: 'Search by unit name or keywords...',
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: (String value) {
          setState(() {
            _searchQuery = value;
          });
        },
      ),
      const SizedBox(height: 12),
    ];

    if (topics.isEmpty) {
      contentWidgets.add(
        const Card(
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Text('No topics found for your search query.'),
          ),
        ),
      );
    } else {
      for (int i = 0; i < topics.length; i++) {
        final TopicEntry topic = topics[i];
        final bool isBookmarked = studyProvider.bookmarkedTopics.contains(
          topic.id,
        );
        final bool isOpened = studyProvider.openedTopics.contains(topic.id);
        contentWidgets.add(
          Card(
            color: Colors.white,
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: () {
                context.read<StudyCenterProvider>().markTopicOpened(topic.id);
                Navigator.of(
                  context,
                ).push(MaterialPageRoute<void>(builder: topic.builder));
              },
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffE6F4F3),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(
                        _topicIcon(topic.id),
                        color: const Color(0xff0F766E),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            topic.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            topic.shortDescription,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.black87),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: isOpened
                                      ? const Color(0xffE0F5E6)
                                      : const Color(0xffEEF2F7),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  isOpened ? 'Opened' : 'New',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: isOpened
                                        ? const Color(0xff166534)
                                        : Colors.black87,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.chevron_right_rounded,
                                color: Colors.grey.shade700,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      tooltip: isBookmarked
                          ? 'Remove bookmark'
                          : 'Add bookmark',
                      icon: Icon(
                        isBookmarked
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_outline_rounded,
                        color: isBookmarked
                            ? const Color(0xff0F766E)
                            : Colors.black54,
                      ),
                      onPressed: () {
                        context.read<StudyCenterProvider>().toggleBookmark(
                          topic.id,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
        if ((i + 1) % 3 == 0) {
          contentWidgets.add(
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: NativeAdWidget(),
            ),
          );
        }
      }
    }

    return ListView(
      padding: const EdgeInsets.all(12),
      children: contentWidgets,
    );
  }

  Future<void> _showOnboardingSheet() async {
    if (!mounted) return;
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Row(
                  children: <Widget>[
                    Icon(Icons.waving_hand, color: Color(0xff0F766E)),
                    SizedBox(width: 8),
                    Text(
                      'Welcome to Computer Science',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  '• Tap a unit card to read detailed notes.\n'
                  '• Use Quick Quiz or Study Hub for MCQs and flashcards.\n'
                  '• Bookmark units you want to revisit.',
                  style: TextStyle(height: 1.4),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      context.read<OnboardingProvider>().markSeen();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Got it, start learning'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _QuickActionsRow extends StatelessWidget {
  final bool onboardingSeen;
  const _QuickActionsRow({required this.onboardingSeen});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FilledButton.icon(
            icon: const Icon(Icons.flash_on_rounded),
            label: const Text('Quick Quiz'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const StudyHubScreen(),
                ),
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: OutlinedButton.icon(
            icon: Icon(
              onboardingSeen ? Icons.info_outline_rounded : Icons.waving_hand,
              color: const Color(0xff0F766E),
            ),
            label: Text(onboardingSeen ? 'Tips' : 'Start here'),
            onPressed: () {
              final _TopicsListState? state = context
                  .findAncestorStateOfType<_TopicsListState>();
              state?._showOnboardingSheet();
            },
          ),
        ),
      ],
    );
  }
}

class _StatPill extends StatelessWidget {
  final String label;
  final String value;

  const _StatPill({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('$label: ', style: const TextStyle(color: Colors.white70)),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
