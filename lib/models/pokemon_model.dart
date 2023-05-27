import 'dart:convert';

// Created using https://app.quicktype.io/

PokemonModel pokemonFromJson(String str) =>
    PokemonModel.fromJson(json.decode(str));

String pokemonToJson(PokemonModel data) => json.encode(data.toJson());

class PokemonModel {
  List<AbilityModel> abilities;
  int baseExperience;
  List<SpeciesDataModel> forms;
  List<GameIndexModel> gameIndices;
  int height;
  List<dynamic> heldItems;
  int id;
  bool isDefault;
  String locationAreaEncounters;
  List<MoveModel> moves;
  String name;
  int order;
  List<dynamic> pastTypes;
  SpeciesDataModel species;
  SpritesModel sprites;
  List<StatModel> stats;
  List<TypeModel> types;
  int weight;
  EvolutionChainModel? evolutionChain;

  PokemonModel(
      {required this.abilities,
      required this.baseExperience,
      required this.forms,
      required this.gameIndices,
      required this.height,
      required this.heldItems,
      required this.id,
      required this.isDefault,
      required this.locationAreaEncounters,
      required this.moves,
      required this.name,
      required this.order,
      required this.pastTypes,
      required this.species,
      required this.sprites,
      required this.stats,
      required this.types,
      required this.weight,
      this.evolutionChain});

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        abilities: List<AbilityModel>.from(
            json["abilities"].map((x) => AbilityModel.fromJson(x))),
        baseExperience: json["base_experience"],
        forms: List<SpeciesDataModel>.from(
            json["forms"].map((x) => SpeciesDataModel.fromJson(x))),
        gameIndices: List<GameIndexModel>.from(
            json["game_indices"].map((x) => GameIndexModel.fromJson(x))),
        height: json["height"],
        heldItems: List<dynamic>.from(json["held_items"].map((x) => x)),
        id: json["id"],
        isDefault: json["is_default"],
        locationAreaEncounters: json["location_area_encounters"],
        moves: List<MoveModel>.from(
            json["moves"].map((x) => MoveModel.fromJson(x))),
        name: json["name"],
        order: json["order"],
        pastTypes: List<dynamic>.from(json["past_types"].map((x) => x)),
        species: SpeciesDataModel.fromJson(json["species"]),
        sprites: SpritesModel.fromJson(json["sprites"]),
        stats: List<StatModel>.from(
            json["stats"].map((x) => StatModel.fromJson(x))),
        types: List<TypeModel>.from(
            json["types"].map((x) => TypeModel.fromJson(x))),
        weight: json["weight"],
      );

  Map<String, dynamic> toJson() => {
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
        "base_experience": baseExperience,
        "forms": List<dynamic>.from(forms.map((x) => x.toJson())),
        "game_indices": List<dynamic>.from(gameIndices.map((x) => x.toJson())),
        "height": height,
        "held_items": List<dynamic>.from(heldItems.map((x) => x)),
        "id": id,
        "is_default": isDefault,
        "location_area_encounters": locationAreaEncounters,
        "moves": List<dynamic>.from(moves.map((x) => x.toJson())),
        "name": name,
        "order": order,
        "past_types": List<dynamic>.from(pastTypes.map((x) => x)),
        "species": species.toJson(),
        "sprites": sprites.toJson(),
        "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "weight": weight,
        "evolution_chain": evolutionChain,
      };
}

class AbilityModel {
  SpeciesDataModel ability;
  bool isHidden;
  int slot;

  AbilityModel({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  factory AbilityModel.fromJson(Map<String, dynamic> json) => AbilityModel(
        ability: SpeciesDataModel.fromJson(json["ability"]),
        isHidden: json["is_hidden"],
        slot: json["slot"],
      );

  Map<String, dynamic> toJson() => {
        "ability": ability.toJson(),
        "is_hidden": isHidden,
        "slot": slot,
      };
}

class SpeciesDataModel {
  String name;
  String url;

  SpeciesDataModel({
    required this.name,
    required this.url,
  });

  factory SpeciesDataModel.fromJson(Map<String, dynamic> json) =>
      SpeciesDataModel(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class GameIndexModel {
  int gameIndex;
  SpeciesDataModel version;

  GameIndexModel({
    required this.gameIndex,
    required this.version,
  });

  factory GameIndexModel.fromJson(Map<String, dynamic> json) => GameIndexModel(
        gameIndex: json["game_index"],
        version: SpeciesDataModel.fromJson(json["version"]),
      );

  Map<String, dynamic> toJson() => {
        "game_index": gameIndex,
        "version": version.toJson(),
      };
}

class MoveModel {
  SpeciesDataModel move;
  List<VersionGroupDetailModel> versionGroupDetails;

  MoveModel({
    required this.move,
    required this.versionGroupDetails,
  });

  factory MoveModel.fromJson(Map<String, dynamic> json) => MoveModel(
        move: SpeciesDataModel.fromJson(json["move"]),
        versionGroupDetails: List<VersionGroupDetailModel>.from(
            json["version_group_details"]
                .map((x) => VersionGroupDetailModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "move": move.toJson(),
        "version_group_details":
            List<dynamic>.from(versionGroupDetails.map((x) => x.toJson())),
      };
}

class VersionGroupDetailModel {
  int levelLearnedAt;
  SpeciesDataModel moveLearnMethod;
  SpeciesDataModel versionGroup;

  VersionGroupDetailModel({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  factory VersionGroupDetailModel.fromJson(Map<String, dynamic> json) =>
      VersionGroupDetailModel(
        levelLearnedAt: json["level_learned_at"],
        moveLearnMethod: SpeciesDataModel.fromJson(json["move_learn_method"]),
        versionGroup: SpeciesDataModel.fromJson(json["version_group"]),
      );

  Map<String, dynamic> toJson() => {
        "level_learned_at": levelLearnedAt,
        "move_learn_method": moveLearnMethod.toJson(),
        "version_group": versionGroup.toJson(),
      };
}

class GenerationVModel {
  SpritesModel blackWhite;

  GenerationVModel({
    required this.blackWhite,
  });

  factory GenerationVModel.fromJson(Map<String, dynamic> json) =>
      GenerationVModel(
        blackWhite: SpritesModel.fromJson(json["black-white"]),
      );

  Map<String, dynamic> toJson() => {
        "black-white": blackWhite.toJson(),
      };
}

class GenerationIvModel {
  SpritesModel diamondPearl;
  SpritesModel heartgoldSoulsilver;
  SpritesModel platinum;

  GenerationIvModel({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  factory GenerationIvModel.fromJson(Map<String, dynamic> json) =>
      GenerationIvModel(
        diamondPearl: SpritesModel.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver:
            SpritesModel.fromJson(json["heartgold-soulsilver"]),
        platinum: SpritesModel.fromJson(json["platinum"]),
      );

  Map<String, dynamic> toJson() => {
        "diamond-pearl": diamondPearl.toJson(),
        "heartgold-soulsilver": heartgoldSoulsilver.toJson(),
        "platinum": platinum.toJson(),
      };
}

class VersionsModel {
  GenerationIModel generationI;
  GenerationIiModel generationIi;
  GenerationIiiModel generationIii;
  GenerationIvModel generationIv;
  GenerationVModel generationV;
  Map<String, HomeModel> generationVi;
  GenerationViiModel generationVii;
  GenerationViiiModel generationViii;

  VersionsModel({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  factory VersionsModel.fromJson(Map<String, dynamic> json) => VersionsModel(
        generationI: GenerationIModel.fromJson(json["generation-i"]),
        generationIi: GenerationIiModel.fromJson(json["generation-ii"]),
        generationIii: GenerationIiiModel.fromJson(json["generation-iii"]),
        generationIv: GenerationIvModel.fromJson(json["generation-iv"]),
        generationV: GenerationVModel.fromJson(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"]).map(
            (k, v) => MapEntry<String, HomeModel>(k, HomeModel.fromJson(v))),
        generationVii: GenerationViiModel.fromJson(json["generation-vii"]),
        generationViii: GenerationViiiModel.fromJson(json["generation-viii"]),
      );

  Map<String, dynamic> toJson() => {
        "generation-i": generationI.toJson(),
        "generation-ii": generationIi.toJson(),
        "generation-iii": generationIii.toJson(),
        "generation-iv": generationIv.toJson(),
        "generation-v": generationV.toJson(),
        "generation-vi": Map.from(generationVi)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "generation-vii": generationVii.toJson(),
        "generation-viii": generationViii.toJson(),
      };
}

class SpritesModel {
  String backDefault;
  dynamic backFemale;
  String backShiny;
  dynamic backShinyFemale;
  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;
  OtherModel? other;
  VersionsModel? versions;
  SpritesModel? animated;

  SpritesModel({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
    this.other,
    this.versions,
    this.animated,
  });

  factory SpritesModel.fromJson(Map<String, dynamic> json) => SpritesModel(
        backDefault: json["back_default"],
        backFemale: json["back_female"],
        backShiny: json["back_shiny"],
        backShinyFemale: json["back_shiny_female"],
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
        other:
            json["other"] == null ? null : OtherModel.fromJson(json["other"]),
        versions: json["versions"] == null
            ? null
            : VersionsModel.fromJson(json["versions"]),
        animated: json["animated"] == null
            ? null
            : SpritesModel.fromJson(json["animated"]),
      );

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_female": backFemale,
        "back_shiny": backShiny,
        "back_shiny_female": backShinyFemale,
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
        "other": other?.toJson(),
        "versions": versions?.toJson(),
        "animated": animated?.toJson(),
      };
}

class GenerationIModel {
  RedBlueModel redBlue;
  RedBlueModel yellow;

  GenerationIModel({
    required this.redBlue,
    required this.yellow,
  });

  factory GenerationIModel.fromJson(Map<String, dynamic> json) =>
      GenerationIModel(
        redBlue: RedBlueModel.fromJson(json["red-blue"]),
        yellow: RedBlueModel.fromJson(json["yellow"]),
      );

  Map<String, dynamic> toJson() => {
        "red-blue": redBlue.toJson(),
        "yellow": yellow.toJson(),
      };
}

class RedBlueModel {
  String backDefault;
  String backGray;
  String backTransparent;
  String frontDefault;
  String frontGray;
  String frontTransparent;

  RedBlueModel({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  factory RedBlueModel.fromJson(Map<String, dynamic> json) => RedBlueModel(
        backDefault: json["back_default"],
        backGray: json["back_gray"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontGray: json["front_gray"],
        frontTransparent: json["front_transparent"],
      );

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_gray": backGray,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_gray": frontGray,
        "front_transparent": frontTransparent,
      };
}

class GenerationIiModel {
  CrystalModel crystal;
  GoldModel gold;
  GoldModel silver;

  GenerationIiModel({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  factory GenerationIiModel.fromJson(Map<String, dynamic> json) =>
      GenerationIiModel(
        crystal: CrystalModel.fromJson(json["crystal"]),
        gold: GoldModel.fromJson(json["gold"]),
        silver: GoldModel.fromJson(json["silver"]),
      );

  Map<String, dynamic> toJson() => {
        "crystal": crystal.toJson(),
        "gold": gold.toJson(),
        "silver": silver.toJson(),
      };
}

class CrystalModel {
  String backDefault;
  String backShiny;
  String backShinyTransparent;
  String backTransparent;
  String frontDefault;
  String frontShiny;
  String frontShinyTransparent;
  String frontTransparent;

  CrystalModel({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  factory CrystalModel.fromJson(Map<String, dynamic> json) => CrystalModel(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        backShinyTransparent: json["back_shiny_transparent"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontShinyTransparent: json["front_shiny_transparent"],
        frontTransparent: json["front_transparent"],
      );

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "back_shiny_transparent": backShinyTransparent,
        "back_transparent": backTransparent,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_shiny_transparent": frontShinyTransparent,
        "front_transparent": frontTransparent,
      };
}

class GoldModel {
  String backDefault;
  String backShiny;
  String frontDefault;
  String frontShiny;
  String? frontTransparent;

  GoldModel({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    this.frontTransparent,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) => GoldModel(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontTransparent: json["front_transparent"],
      );

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
        "front_transparent": frontTransparent,
      };
}

class GenerationIiiModel {
  OfficialArtworkModel emerald;
  GoldModel fireredLeafgreen;
  GoldModel rubySapphire;

  GenerationIiiModel({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  factory GenerationIiiModel.fromJson(Map<String, dynamic> json) =>
      GenerationIiiModel(
        emerald: OfficialArtworkModel.fromJson(json["emerald"]),
        fireredLeafgreen: GoldModel.fromJson(json["firered-leafgreen"]),
        rubySapphire: GoldModel.fromJson(json["ruby-sapphire"]),
      );

  Map<String, dynamic> toJson() => {
        "emerald": emerald.toJson(),
        "firered-leafgreen": fireredLeafgreen.toJson(),
        "ruby-sapphire": rubySapphire.toJson(),
      };
}

class OfficialArtworkModel {
  String frontDefault;
  String frontShiny;

  OfficialArtworkModel({
    required this.frontDefault,
    required this.frontShiny,
  });

  factory OfficialArtworkModel.fromJson(Map<String, dynamic> json) =>
      OfficialArtworkModel(
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_shiny": frontShiny,
      };
}

class HomeModel {
  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;

  HomeModel({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
      };
}

class GenerationViiModel {
  DreamWorldModel icons;
  HomeModel ultraSunUltraMoon;

  GenerationViiModel({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  factory GenerationViiModel.fromJson(Map<String, dynamic> json) =>
      GenerationViiModel(
        icons: DreamWorldModel.fromJson(json["icons"]),
        ultraSunUltraMoon: HomeModel.fromJson(json["ultra-sun-ultra-moon"]),
      );

  Map<String, dynamic> toJson() => {
        "icons": icons.toJson(),
        "ultra-sun-ultra-moon": ultraSunUltraMoon.toJson(),
      };
}

class DreamWorldModel {
  String frontDefault;
  dynamic frontFemale;

  DreamWorldModel({
    required this.frontDefault,
    this.frontFemale,
  });

  factory DreamWorldModel.fromJson(Map<String, dynamic> json) =>
      DreamWorldModel(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
      );

  Map<String, dynamic> toJson() => {
        "front_default": frontDefault,
        "front_female": frontFemale,
      };
}

class GenerationViiiModel {
  DreamWorldModel icons;

  GenerationViiiModel({
    required this.icons,
  });

  factory GenerationViiiModel.fromJson(Map<String, dynamic> json) =>
      GenerationViiiModel(
        icons: DreamWorldModel.fromJson(json["icons"]),
      );

  Map<String, dynamic> toJson() => {
        "icons": icons.toJson(),
      };
}

class OtherModel {
  DreamWorldModel dreamWorld;
  HomeModel home;
  OfficialArtworkModel officialArtwork;

  OtherModel({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
  });

  factory OtherModel.fromJson(Map<String, dynamic> json) => OtherModel(
        dreamWorld: DreamWorldModel.fromJson(json["dream_world"]),
        home: HomeModel.fromJson(json["home"]),
        officialArtwork:
            OfficialArtworkModel.fromJson(json["official-artwork"]),
      );

  Map<String, dynamic> toJson() => {
        "dream_world": dreamWorld.toJson(),
        "home": home.toJson(),
        "official-artwork": officialArtwork.toJson(),
      };
}

class StatModel {
  int baseStat;
  int effort;
  SpeciesDataModel stat;

  StatModel({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory StatModel.fromJson(Map<String, dynamic> json) => StatModel(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: SpeciesDataModel.fromJson(json["stat"]),
      );

  Map<String, dynamic> toJson() => {
        "base_stat": baseStat,
        "effort": effort,
        "stat": stat.toJson(),
      };
}

class TypeModel {
  int slot;
  SpeciesDataModel type;

  TypeModel({
    required this.slot,
    required this.type,
  });

  factory TypeModel.fromJson(Map<String, dynamic> json) => TypeModel(
        slot: json["slot"],
        type: SpeciesDataModel.fromJson(json["type"]),
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type.toJson(),
      };
}

SpeciesModel speciesFromJson(String str) =>
    SpeciesModel.fromJson(json.decode(str));

String speciesToJson(SpeciesModel data) => json.encode(data.toJson());

class SpeciesModel {
  int baseHappiness;
  int captureRate;
  ColorModel color;
  List<ColorModel> eggGroups;
  EvolutionChainDataModel evolutionChain;
  dynamic evolvesFromSpecies;
  List<FlavorTextEntry> flavorTextEntries;
  List<dynamic> formDescriptions;
  bool formsSwitchable;
  int genderRate;
  List<GenusModel> genera;
  ColorModel generation;
  ColorModel growthRate;
  ColorModel habitat;
  bool hasGenderDifferences;
  int hatchCounter;
  int id;
  bool isBaby;
  bool isLegendary;
  bool isMythical;
  String name;
  List<NameModel> names;
  int order;
  List<PalParkEncounterModel> palParkEncounters;
  List<PokedexNumberModel> pokedexNumbers;
  ColorModel shape;
  List<VarietyModel> varieties;

  SpeciesModel({
    required this.baseHappiness,
    required this.captureRate,
    required this.color,
    required this.eggGroups,
    required this.evolutionChain,
    this.evolvesFromSpecies,
    required this.flavorTextEntries,
    required this.formDescriptions,
    required this.formsSwitchable,
    required this.genderRate,
    required this.genera,
    required this.generation,
    required this.growthRate,
    required this.habitat,
    required this.hasGenderDifferences,
    required this.hatchCounter,
    required this.id,
    required this.isBaby,
    required this.isLegendary,
    required this.isMythical,
    required this.name,
    required this.names,
    required this.order,
    required this.palParkEncounters,
    required this.pokedexNumbers,
    required this.shape,
    required this.varieties,
  });

  factory SpeciesModel.fromJson(Map<String, dynamic> json) => SpeciesModel(
        baseHappiness: json["base_happiness"],
        captureRate: json["capture_rate"],
        color: ColorModel.fromJson(json["color"]),
        eggGroups: List<ColorModel>.from(
            json["egg_groups"].map((x) => ColorModel.fromJson(x))),
        evolutionChain:
            EvolutionChainDataModel.fromJson(json["evolution_chain"]),
        evolvesFromSpecies: json["evolves_from_species"],
        flavorTextEntries: List<FlavorTextEntry>.from(
            json["flavor_text_entries"]
                .map((x) => FlavorTextEntry.fromJson(x))),
        formDescriptions:
            List<dynamic>.from(json["form_descriptions"].map((x) => x)),
        formsSwitchable: json["forms_switchable"],
        genderRate: json["gender_rate"],
        genera: List<GenusModel>.from(
            json["genera"].map((x) => GenusModel.fromJson(x))),
        generation: ColorModel.fromJson(json["generation"]),
        growthRate: ColorModel.fromJson(json["growth_rate"]),
        habitat: ColorModel.fromJson(json["habitat"]),
        hasGenderDifferences: json["has_gender_differences"],
        hatchCounter: json["hatch_counter"],
        id: json["id"],
        isBaby: json["is_baby"],
        isLegendary: json["is_legendary"],
        isMythical: json["is_mythical"],
        name: json["name"],
        names: List<NameModel>.from(
            json["names"].map((x) => NameModel.fromJson(x))),
        order: json["order"],
        palParkEncounters: List<PalParkEncounterModel>.from(
            json["pal_park_encounters"]
                .map((x) => PalParkEncounterModel.fromJson(x))),
        pokedexNumbers: List<PokedexNumberModel>.from(
            json["pokedex_numbers"].map((x) => PokedexNumberModel.fromJson(x))),
        shape: ColorModel.fromJson(json["shape"]),
        varieties: List<VarietyModel>.from(
            json["varieties"].map((x) => VarietyModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "base_happiness": baseHappiness,
        "capture_rate": captureRate,
        "color": color.toJson(),
        "egg_groups": List<dynamic>.from(eggGroups.map((x) => x.toJson())),
        "evolution_chain": evolutionChain.toJson(),
        "evolves_from_species": evolvesFromSpecies,
        "flavor_text_entries":
            List<dynamic>.from(flavorTextEntries.map((x) => x.toJson())),
        "form_descriptions": List<dynamic>.from(formDescriptions.map((x) => x)),
        "forms_switchable": formsSwitchable,
        "gender_rate": genderRate,
        "genera": List<dynamic>.from(genera.map((x) => x.toJson())),
        "generation": generation.toJson(),
        "growth_rate": growthRate.toJson(),
        "habitat": habitat.toJson(),
        "has_gender_differences": hasGenderDifferences,
        "hatch_counter": hatchCounter,
        "id": id,
        "is_baby": isBaby,
        "is_legendary": isLegendary,
        "is_mythical": isMythical,
        "name": name,
        "names": List<dynamic>.from(names.map((x) => x.toJson())),
        "order": order,
        "pal_park_encounters":
            List<dynamic>.from(palParkEncounters.map((x) => x.toJson())),
        "pokedex_numbers":
            List<dynamic>.from(pokedexNumbers.map((x) => x.toJson())),
        "shape": shape.toJson(),
        "varieties": List<dynamic>.from(varieties.map((x) => x.toJson())),
      };
}

class ColorModel {
  String name;
  String url;

  ColorModel({
    required this.name,
    required this.url,
  });

  factory ColorModel.fromJson(Map<String, dynamic> json) => ColorModel(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class EvolutionChainDataModel {
  String url;

  EvolutionChainDataModel({
    required this.url,
  });

  factory EvolutionChainDataModel.fromJson(Map<String, dynamic> json) =>
      EvolutionChainDataModel(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}

class FlavorTextEntry {
  String flavorText;
  ColorModel language;
  ColorModel version;

  FlavorTextEntry({
    required this.flavorText,
    required this.language,
    required this.version,
  });

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      FlavorTextEntry(
        flavorText: json["flavor_text"],
        language: ColorModel.fromJson(json["language"]),
        version: ColorModel.fromJson(json["version"]),
      );

  Map<String, dynamic> toJson() => {
        "flavor_text": flavorText,
        "language": language.toJson(),
        "version": version.toJson(),
      };
}

class GenusModel {
  String genus;
  ColorModel language;

  GenusModel({
    required this.genus,
    required this.language,
  });

  factory GenusModel.fromJson(Map<String, dynamic> json) => GenusModel(
        genus: json["genus"],
        language: ColorModel.fromJson(json["language"]),
      );

  Map<String, dynamic> toJson() => {
        "genus": genus,
        "language": language.toJson(),
      };
}

class NameModel {
  ColorModel language;
  String name;

  NameModel({
    required this.language,
    required this.name,
  });

  factory NameModel.fromJson(Map<String, dynamic> json) => NameModel(
        language: ColorModel.fromJson(json["language"]),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "language": language.toJson(),
        "name": name,
      };
}

class PalParkEncounterModel {
  ColorModel area;
  int baseScore;
  int rate;

  PalParkEncounterModel({
    required this.area,
    required this.baseScore,
    required this.rate,
  });

  factory PalParkEncounterModel.fromJson(Map<String, dynamic> json) =>
      PalParkEncounterModel(
        area: ColorModel.fromJson(json["area"]),
        baseScore: json["base_score"],
        rate: json["rate"],
      );

  Map<String, dynamic> toJson() => {
        "area": area.toJson(),
        "base_score": baseScore,
        "rate": rate,
      };
}

class PokedexNumberModel {
  int entryNumber;
  ColorModel pokedex;

  PokedexNumberModel({
    required this.entryNumber,
    required this.pokedex,
  });

  factory PokedexNumberModel.fromJson(Map<String, dynamic> json) =>
      PokedexNumberModel(
        entryNumber: json["entry_number"],
        pokedex: ColorModel.fromJson(json["pokedex"]),
      );

  Map<String, dynamic> toJson() => {
        "entry_number": entryNumber,
        "pokedex": pokedex.toJson(),
      };
}

class VarietyModel {
  bool isDefault;
  ColorModel pokemon;

  VarietyModel({
    required this.isDefault,
    required this.pokemon,
  });

  factory VarietyModel.fromJson(Map<String, dynamic> json) => VarietyModel(
        isDefault: json["is_default"],
        pokemon: ColorModel.fromJson(json["pokemon"]),
      );

  Map<String, dynamic> toJson() => {
        "is_default": isDefault,
        "pokemon": pokemon.toJson(),
      };
}

EvolutionChainModel evolutionChainFromJson(String str) =>
    EvolutionChainModel.fromJson(json.decode(str));

String evolutionChainToJson(EvolutionChainModel data) =>
    json.encode(data.toJson());

class EvolutionChainModel {
  dynamic babyTriggerItem;
  ChainModel chain;
  int id;

  EvolutionChainModel({
    this.babyTriggerItem,
    required this.chain,
    required this.id,
  });

  factory EvolutionChainModel.fromJson(Map<String, dynamic> json) =>
      EvolutionChainModel(
        babyTriggerItem: json["baby_trigger_item"],
        chain: ChainModel.fromJson(json["chain"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "baby_trigger_item": babyTriggerItem,
        "chain": chain.toJson(),
        "id": id,
      };
}

class ChainModel {
  List<EvolutionDetailModel> evolutionDetails;
  List<ChainModel> evolvesTo;
  bool isBaby;
  SpeciesDataModel species;

  ChainModel({
    required this.evolutionDetails,
    required this.evolvesTo,
    required this.isBaby,
    required this.species,
  });

  factory ChainModel.fromJson(Map<String, dynamic> json) => ChainModel(
        evolutionDetails: List<EvolutionDetailModel>.from(
            json["evolution_details"]
                .map((x) => EvolutionDetailModel.fromJson(x))),
        evolvesTo: List<ChainModel>.from(
            json["evolves_to"].map((x) => ChainModel.fromJson(x))),
        isBaby: json["is_baby"],
        species: SpeciesDataModel.fromJson(json["species"]),
      );

  Map<String, dynamic> toJson() => {
        "evolution_details":
            List<dynamic>.from(evolutionDetails.map((x) => x.toJson())),
        "evolves_to": List<dynamic>.from(evolvesTo.map((x) => x.toJson())),
        "is_baby": isBaby,
        "species": species.toJson(),
      };
}

class EvolutionDetailModel {
  dynamic gender;
  dynamic heldItem;
  dynamic item;
  dynamic knownMove;
  dynamic knownMoveType;
  dynamic location;
  dynamic minAffection;
  dynamic minBeauty;
  dynamic minHappiness;
  int minLevel;
  bool needsOverworldRain;
  dynamic partySpecies;
  dynamic partyType;
  dynamic relativePhysicalStats;
  String timeOfDay;
  dynamic tradeSpecies;
  SpeciesDataModel trigger;
  bool turnUpsideDown;

  EvolutionDetailModel({
    this.gender,
    this.heldItem,
    this.item,
    this.knownMove,
    this.knownMoveType,
    this.location,
    this.minAffection,
    this.minBeauty,
    this.minHappiness,
    required this.minLevel,
    required this.needsOverworldRain,
    this.partySpecies,
    this.partyType,
    this.relativePhysicalStats,
    required this.timeOfDay,
    this.tradeSpecies,
    required this.trigger,
    required this.turnUpsideDown,
  });

  factory EvolutionDetailModel.fromJson(Map<String, dynamic> json) =>
      EvolutionDetailModel(
        gender: json["gender"],
        heldItem: json["held_item"],
        item: json["item"],
        knownMove: json["known_move"],
        knownMoveType: json["known_move_type"],
        location: json["location"],
        minAffection: json["min_affection"],
        minBeauty: json["min_beauty"],
        minHappiness: json["min_happiness"],
        minLevel: json["min_level"],
        needsOverworldRain: json["needs_overworld_rain"],
        partySpecies: json["party_species"],
        partyType: json["party_type"],
        relativePhysicalStats: json["relative_physical_stats"],
        timeOfDay: json["time_of_day"],
        tradeSpecies: json["trade_species"],
        trigger: SpeciesDataModel.fromJson(json["trigger"]),
        turnUpsideDown: json["turn_upside_down"],
      );

  Map<String, dynamic> toJson() => {
        "gender": gender,
        "held_item": heldItem,
        "item": item,
        "known_move": knownMove,
        "known_move_type": knownMoveType,
        "location": location,
        "min_affection": minAffection,
        "min_beauty": minBeauty,
        "min_happiness": minHappiness,
        "min_level": minLevel,
        "needs_overworld_rain": needsOverworldRain,
        "party_species": partySpecies,
        "party_type": partyType,
        "relative_physical_stats": relativePhysicalStats,
        "time_of_day": timeOfDay,
        "trade_species": tradeSpecies,
        "trigger": trigger.toJson(),
        "turn_upside_down": turnUpsideDown,
      };
}

SearchPokemonList originalPokemonListFromJson(String str) =>
    SearchPokemonList.fromJson(json.decode(str));

String originalPokemonListToJson(SearchPokemonList data) =>
    json.encode(data.toJson());

class SearchPokemonList {
  int count;
  String next;
  dynamic previous;
  List<SearchItemPokemon> results;

  SearchPokemonList({
    required this.count,
    required this.next,
    this.previous,
    required this.results,
  });

  factory SearchPokemonList.fromJson(Map<String, dynamic> json) =>
      SearchPokemonList(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<SearchItemPokemon>.from(
            json["results"].map((x) => SearchItemPokemon.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class SearchItemPokemon {
  String name;
  String url;

  SearchItemPokemon({
    required this.name,
    required this.url,
  });

  factory SearchItemPokemon.fromJson(Map<String, dynamic> json) =>
      SearchItemPokemon(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
