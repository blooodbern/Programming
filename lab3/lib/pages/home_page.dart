import 'package:flutter/material.dart';

import '../data.dart';
import 'details_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: DrinkContainer.values.length,
        itemBuilder: (context, index) {
          DrinkContainer drinkContainer = DrinkContainer.values[index];

          return ListTile(
            leading: Image.asset(
              "assets/images/drink_containers/${drinkContainer.image}",
              width: 60,
              fit: BoxFit.fill,
            ),
            title: Text(drinkContainer.type),
            subtitle: Row(
              children: [
                Text("Color: ${drinkContainer.color.name}"),
                Container(
                  height: 10,
                  width: 10,
                  margin: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: drinkContainer.color.color,
                  ),
                ),
              ],
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsPage(index)),
            ),
          );
        },
      );
}
