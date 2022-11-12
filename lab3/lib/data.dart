import 'package:flutter/material.dart';

class DrinkContainerColor {
  final String name;
  final Color color;

  const DrinkContainerColor(
    this.name,
    this.color,
  );
}

enum DrinkContainer {
  cup(
    "Cup",
    "cup_orange.jpg",
    DrinkContainerColor(
      "Orange",
      Colors.orange,
    ),
    ["tea"],
  ),
  mug(
    "Mug",
    "mug_black.jpg",
    DrinkContainerColor(
      "Black",
      Colors.black,
    ),
    ["coffee"],
  ),
  glass(
    "Glass",
    "glass_variable.webp",
    DrinkContainerColor(
      "Variable",
      Colors.white,
    ),
    [
      "juice",
      "water",
    ],
  ),
  wineGlass(
    "Wine Glass",
    "wine_glass_variable.jpg",
    DrinkContainerColor(
      "Variable",
      Colors.white,
    ),
    ["wine"],
  );

  final String type;
  final String image;
  final DrinkContainerColor color;
  final List<String> drink;

  const DrinkContainer(
    this.type,
    this.image,
    this.color,
    this.drink,
  );
}
