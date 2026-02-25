import 'package:flutter/material.dart';

import '../views/pages/unit1.dart';
import '../views/pages/unit2.dart';
import '../views/pages/unit3.dart';
import '../views/pages/unit4.dart';
import '../views/pages/unit5.dart';
import '../views/pages/unit6.dart';
import '../views/pages/unit7.dart';

class TopicEntry {
  final String id;
  final String title;
  final String shortDescription;
  final WidgetBuilder builder;

  const TopicEntry({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.builder,
  });
}

class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;

  const QuizQuestion({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}

class FlashcardItem {
  final String title;
  final String front;
  final String back;

  const FlashcardItem({
    required this.title,
    required this.front,
    required this.back,
  });
}

final List<TopicEntry> topicEntries = <TopicEntry>[
  TopicEntry(
    id: 'unit1',
    title: 'Database',
    shortDescription: 'DBMS concepts, models, normalization, and SQL basics.',
    builder: (BuildContext context) => const DataBase(),
  ),
  TopicEntry(
    id: 'unit2',
    title: 'Data Communication and Networking',
    shortDescription: 'OSI model, media types, protocols, and network types.',
    builder: (BuildContext context) => NetWork(),
  ),
  TopicEntry(
    id: 'unit3',
    title: 'Web Technology II',
    shortDescription:
        'Modern web stack, HTTP concepts, and client-server flow.',
    builder: (BuildContext context) => const WebDevelopment(),
  ),
  TopicEntry(
    id: 'unit4',
    title: 'Programming in C',
    shortDescription:
        'C syntax, memory, functions, and structured programming.',
    builder: (BuildContext context) => const ProgrammingC(),
  ),
  TopicEntry(
    id: 'unit5',
    title: 'Object Oriented Programming',
    shortDescription:
        'OOP concepts, class design, inheritance, and polymorphism.',
    builder: (BuildContext context) => OoP(),
  ),
  TopicEntry(
    id: 'unit6',
    title: 'Software Process Model',
    shortDescription: 'SDLC models, planning, testing, and quality management.',
    builder: (BuildContext context) => SpM(),
  ),
  TopicEntry(
    id: 'unit7',
    title: 'Recent Trend in Technology',
    shortDescription:
        'AI, cloud computing, IoT, cybersecurity, and data trends.',
    builder: (BuildContext context) => TechnologyChaper(),
  ),
];

const List<FlashcardItem> flashcards = <FlashcardItem>[
  FlashcardItem(
    title: 'Database',
    front: 'What is a DBMS?',
    back: 'A software system to define, create, store, and manage databases.',
  ),
  FlashcardItem(
    title: 'Normalization',
    front: 'Why is normalization important?',
    back: 'It reduces redundancy and improves data integrity.',
  ),
  FlashcardItem(
    title: 'Networking',
    front: 'What does the OSI model describe?',
    back: 'How data moves across seven communication layers.',
  ),
  FlashcardItem(
    title: 'Protocols',
    front: 'Difference between TCP and IP?',
    back: 'TCP ensures reliable delivery; IP handles addressing and routing.',
  ),
  FlashcardItem(
    title: 'Web',
    front: 'What is HTTP?',
    back: 'An application-layer protocol for client-server web communication.',
  ),
  FlashcardItem(
    title: 'C Language',
    front: 'What is a pointer in C?',
    back: 'A variable that stores the memory address of another variable.',
  ),
  FlashcardItem(
    title: 'OOP',
    front: 'What is polymorphism?',
    back: 'One interface with multiple implementations based on object type.',
  ),
  FlashcardItem(
    title: 'Process Model',
    front: 'What is the waterfall model?',
    back: 'A linear SDLC model where each phase is completed in sequence.',
  ),
  FlashcardItem(
    title: 'Technology',
    front: 'What is cloud computing?',
    back: 'On-demand delivery of computing services over the internet.',
  ),
];

const List<QuizQuestion> quizQuestions = <QuizQuestion>[
  QuizQuestion(
    question: 'Which normal form removes partial dependency?',
    options: <String>['1NF', '2NF', '3NF', 'BCNF'],
    correctIndex: 1,
    explanation:
        'Second Normal Form (2NF) removes partial dependencies on a composite key.',
  ),
  QuizQuestion(
    question: 'Which OSI layer is responsible for routing packets?',
    options: <String>[
      'Transport Layer',
      'Session Layer',
      'Network Layer',
      'Data Link Layer',
    ],
    correctIndex: 2,
    explanation:
        'Routing and logical addressing are functions of the network layer.',
  ),
  QuizQuestion(
    question: 'What does SQL stand for?',
    options: <String>[
      'Structured Query Language',
      'Standard Queue Language',
      'Simple Query Logic',
      'Sequential Query List',
    ],
    correctIndex: 0,
    explanation:
        'SQL means Structured Query Language and is used for relational databases.',
  ),
  QuizQuestion(
    question: 'Which protocol is commonly used to transfer web pages?',
    options: <String>['SMTP', 'FTP', 'HTTP', 'SNMP'],
    correctIndex: 2,
    explanation: 'HTTP is the standard protocol for web page transfer.',
  ),
  QuizQuestion(
    question: 'Which symbol is used to declare a pointer in C?',
    options: <String>['&', '*', '#', '%'],
    correctIndex: 1,
    explanation: 'The * symbol is used in pointer declarations in C.',
  ),
  QuizQuestion(
    question: 'Encapsulation in OOP means:',
    options: <String>[
      'Combining data and methods into a single unit',
      'Writing only global variables',
      'Using only procedural code',
      'Removing constructors',
    ],
    correctIndex: 0,
    explanation: 'Encapsulation wraps state and behavior inside a class.',
  ),
  QuizQuestion(
    question: 'Which process model is iterative and risk-driven?',
    options: <String>['Waterfall', 'Spiral', 'Big Bang', 'V-Model'],
    correctIndex: 1,
    explanation: 'The Spiral model focuses on iteration and risk analysis.',
  ),
  QuizQuestion(
    question: 'IoT primarily refers to:',
    options: <String>[
      'Only industrial robots',
      'Network of connected smart devices',
      'Only cloud servers',
      'Offline desktop tools',
    ],
    correctIndex: 1,
    explanation:
        'Internet of Things (IoT) connects sensors/devices for data exchange.',
  ),
  QuizQuestion(
    question: 'Which key uniquely identifies each row in a table?',
    options: <String>[
      'Foreign Key',
      'Primary Key',
      'Candidate Key',
      'Composite Key',
    ],
    correctIndex: 1,
    explanation: 'A primary key uniquely identifies each record in a table.',
  ),
  QuizQuestion(
    question: 'Which one is a transport layer protocol?',
    options: <String>['IP', 'TCP', 'ARP', 'ICMP'],
    correctIndex: 1,
    explanation: 'TCP is a transport layer protocol.',
  ),
];
