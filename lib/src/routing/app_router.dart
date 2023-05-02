import 'package:go_router/go_router.dart';
import 'package:test_ui/src/view/bibliotheque.dart';
import 'package:test_ui/src/view/recherche.dart';

import '../common_widget/navigation_bar.dart';

enum AppRoute {
  accueil,
  bibliotheque,
  recherche,
}

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.accueil.name,
      builder: (context, state) => const BottomNavigationBarWidget(),
    ),
    GoRoute(
      path: '/',
      name: AppRoute.bibliotheque.name,
      builder: (context, state) => const BibliothequeView(),
    ),
    GoRoute(
      path: '/',
      name: AppRoute.recherche.name,
      builder: (context, state) => const RechercheView(),
    )
  ],
);
