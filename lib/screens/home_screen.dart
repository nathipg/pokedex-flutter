import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../models/app_model.dart';
import '../services/pokemon_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showLoading = true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final viewModel = Provider.of<AppModel>(context, listen: false);
      viewModel.pokemonList = await PokemonService().getPokemonList();
      setState(() {
        _showLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
        builder: (context, viewModel, _) => Scaffold(
              appBar: AppBar(
                title: const Text('Pokedex'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _showLoading
                          ? 'Loading...'
                          : 'Pokemon list ${viewModel.pokemonList.length}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => context.go('/details'),
                tooltip: 'Go to details',
                child: const Text('Details'),
              ),
            ));
  }
}
