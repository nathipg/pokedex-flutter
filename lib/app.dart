import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'models/app_model.dart';
import 'screens/details_screen.dart';
import 'screens/home_screen.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'details/:pokemonId',
            builder: (context, state) =>
                DetailsScreen(pokemonId: state.params['pokemonId']),
          ),
        ]),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppModel(),
      child: MaterialApp.router(
        routerConfig: goRouter,
      ),
    );
  }
}
