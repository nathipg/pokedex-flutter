import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/app_model.dart';

class DetailsScreen extends StatelessWidget {
  final String? pokemonId;

  const DetailsScreen({super.key, required this.pokemonId});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
      builder: (context, viewModel, _) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Pokemon details $pokemonId',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
