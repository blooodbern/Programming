import 'package:flutter/material.dart';

import '../data.dart';

class DetailsPage extends StatelessWidget {
  final int _drinkContainerIndex;

  const DetailsPage(
    this._drinkContainerIndex, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DrinkContainer drinkContainer = DrinkContainer.values[_drinkContainerIndex];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
                "assets/images/drink_containers/${drinkContainer.image}"),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      drinkContainer.type,
                      style: const TextStyle(fontSize: 32),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: drinkContainer.color.color,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      drinkContainer.color.name,
                      style: TextStyle(
                        fontSize: 24,
                        color: ThemeData.estimateBrightnessForColor(
                                    drinkContainer.color.color) ==
                                Brightness.light
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Text(
                "Used for drinking ${drinkContainer.drink.reduce((value, element) => "$value, $element")}.",
                style: const TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
