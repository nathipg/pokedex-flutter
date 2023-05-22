import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/details-screen.dart';
import 'screens/home-screen.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'details',
            builder: (context, state) => const DetailsScreen(),
          ),
        ]),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
