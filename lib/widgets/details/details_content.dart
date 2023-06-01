import 'package:flutter/material.dart';

import '../../models/pokemon_model.dart';
import '../rounded_card.dart';
import 'tab/about.dart';

List<String> tabsName = [
  'About',
  'Base Stats',
  'Evolution',
  'Moves',
];

class DetailsContent extends StatelessWidget {
  final PokemonModel pokemon;
  final List<PokemonModel> pokemonList;

  const DetailsContent({
    super.key,
    required this.pokemon,
    required this.pokemonList,
  });

  @override
  Widget build(BuildContext context) {
    List<Tab> tabs = tabsName
        .map(
          (String tabName) => Tab(
            text: tabName,
          ),
        )
        .toList();

    return RoundedCard(
      color: Colors.white,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
          child: DefaultTabController(
            length: tabsName.length,
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.black,
                  isScrollable: true,
                  tabs: tabs,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: TabBarView(
                      children: [
                        DetailsTabAbout(
                          pokemon: pokemon,
                        ),
                        const Text('TAB 2'),
                        const Text('TAB 3'),
                        const Text('TAB 4'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
