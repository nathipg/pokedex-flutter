import 'package:flutter/material.dart';

class TypeColor {
  static const Map<String, Color> _colorMap = {
    'normal': Color.fromRGBO(168, 167, 122, 1),
    'fire': Color.fromRGBO(238, 129, 48, 1),
    'water': Color.fromRGBO(99, 144, 240, 1),
    'electric': Color.fromRGBO(247, 208, 44, 1),
    'grass': Color.fromRGBO(122, 199, 76, 1),
    'ice': Color.fromRGBO(150, 217, 214, 1),
    'fighting': Color.fromRGBO(194, 46, 40, 1),
    'poison': Color.fromRGBO(163, 62, 161, 1),
    'ground': Color.fromRGBO(226, 191, 101, 1),
    'flying': Color.fromRGBO(169, 143, 243, 1),
    'psychic': Color.fromRGBO(249, 85, 135, 1),
    'bug': Color.fromRGBO(166, 185, 26, 1),
    'rock': Color.fromRGBO(182, 161, 54, 1),
    'ghost': Color.fromRGBO(115, 87, 151, 1),
    'dragon': Color.fromRGBO(111, 53, 252, 1),
    'dark': Color.fromRGBO(112, 87, 70, 1),
    'steel': Color.fromRGBO(183, 183, 206, 1),
    'fairy': Color.fromRGBO(214, 133, 173, 1),
  };

  static getTypeColor(String type) {
    return _colorMap[type.toLowerCase()];
  }
}
