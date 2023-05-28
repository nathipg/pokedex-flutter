import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../helpers/type_color.dart';
import '../models/app_model.dart';
import '../models/pokemon_model.dart';
import '../widgets/page_title.dart';
import '../widgets/pokemon_logo.dart';
import '../widgets/pokemon_type_card.dart';

class DetailsScreen extends StatelessWidget {
  final String? pokemonId;

  const DetailsScreen({super.key, required this.pokemonId});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
        builder: (context, viewModel, _) => pokemonId != null
            ? DetailsScreenContent(
                pokemonId: pokemonId!,
                pokemonList: viewModel.pokemonList,
              )
            : const Text('Couldn\'t find pokemon'));
  }
}

class DetailsScreenContent extends StatelessWidget {
  final String pokemonId;
  final List<PokemonModel> pokemonList;

  const DetailsScreenContent(
      {super.key, required this.pokemonList, required this.pokemonId});

  @override
  Widget build(BuildContext context) {
    PokemonModel pokemon =
        pokemonList.firstWhere((pokemon) => pokemon.id == int.parse(pokemonId));

    String pokemonImg = pokemon.sprites.other?.officialArtwork.frontDefault ??
        pokemon.sprites.frontDefault;

    return Scaffold(
      backgroundColor: TypeColor.getTypeColor(pokemon.types[0].type.name),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          PokemonLogo(
            color: Colors.white,
            x: MediaQuery.of(context).size.width * 0.2,
            y: 50,
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.width / 1.5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PageTitle(
                        text: toBeginningOfSentenceCase(pokemon.name) ?? '',
                        color: Colors.white,
                        withToolbar: true,
                        marginBottom: 8,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            for (var type in pokemon.types)
                              PokemonTypeCard(type: type.type.name)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: Text(
                      '#${pokemon.id.toString().padLeft(3, 0.toString())}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
                    child: Text('DETAILS'),
                  ),
                ),
              ),
            ],
          ),
          Container(
            transform: Matrix4.translationValues(
              MediaQuery.of(context).size.width / 4,
              MediaQuery.of(context).size.height / 4 -
                  MediaQuery.of(context).size.width / 8,
              0,
            ),
            child: Image(
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width / 2,
              image: NetworkImage(
                pokemonImg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
