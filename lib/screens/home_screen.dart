import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/app_model.dart';
import '../services/pokemon_service.dart';
import '../widgets/loading.dart';
import '../widgets/page_title.dart';
import '../widgets/pokemon/card/pokemon_card_list.dart';
import '../widgets/pokemon/pokemon_logo.dart';

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
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          toolbarHeight: 0,
        ),
        body: Stack(
          children: [
            PokemonLogo(
              color: Colors.grey,
              x: MediaQuery.of(context).size.width * 0.53,
              y: -50,
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.width / 1.5,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PageTitle(
                    text: 'Pokedex',
                    color: Colors.black,
                    withToolbar: false,
                    marginBottom: 32,
                  ),
                  _showLoading
                      ? const Loading()
                      : PokemonCardList(pokemonList: viewModel.pokemonList),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
