import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/app_model.dart';
import '../services/pokemon_service.dart';
import '../widgets/pokemon_card_list.dart';

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
          title: const Text(
            'Pokedex',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: _showLoading
            ? Text('Loading...')
            : SingleChildScrollView(
                child: Center(
                  child: PokemonCardList(pokemonList: viewModel.pokemonList),
                ),
              ),
      ),
    );
  }
}
