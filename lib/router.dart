import 'package:go_router/go_router.dart';
import 'views/main_screen.dart';
import 'features/highlights/models/highlight_model.dart';
import 'features/highlights/pages/highlights_list_page.dart';
import 'views/pages/unit1.dart';
import 'views/pages/unit2.dart';
import 'views/pages/unit3.dart';
import 'views/pages/unit4.dart';
import 'views/pages/unit5.dart';
import 'views/pages/unit6.dart';
import 'views/pages/unit7.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const ActionButton()),
    GoRoute(
      path: '/highlights',
      builder: (context, state) => const HighlightsListPage(),
    ),
    GoRoute(
      path: '/unit1',
      builder: (context, state) =>
          DataBase(initialHighlight: state.extra as HighlightModel?),
    ),
    GoRoute(
      path: '/unit2',
      builder: (context, state) =>
          NetWork(initialHighlight: state.extra as HighlightModel?),
    ),
    GoRoute(
      path: '/unit3',
      builder: (context, state) =>
          WebDevelopment(initialHighlight: state.extra as HighlightModel?),
    ),
    GoRoute(
      path: '/unit4',
      builder: (context, state) =>
          ProgrammingC(initialHighlight: state.extra as HighlightModel?),
    ),
    GoRoute(
      path: '/unit5',
      builder: (context, state) =>
          OoP(initialHighlight: state.extra as HighlightModel?),
    ),
    GoRoute(
      path: '/unit6',
      builder: (context, state) =>
          SpM(initialHighlight: state.extra as HighlightModel?),
    ),
    GoRoute(
      path: '/unit7',
      builder: (context, state) =>
          TechnologyChaper(initialHighlight: state.extra as HighlightModel?),
    ),
  ],
);
