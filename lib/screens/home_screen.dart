import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/services/pokemon_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<PokemonModel?> _pokemonList = [];
  bool _showLoading = true;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _pokemonList = (await PokemonService().getPokemonList());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {
          _showLoading = false;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  : 'Pokemon list ${_pokemonList.length}',
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
    );
  }
}
