import 'package:flutter/material.dart';

import '../utils/donut_tile.dart'; //[7] importar archivo creado

class DonutTab extends StatelessWidget {
  //list of donuts [1]
  final List donutsOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //vista de cuadricula [2]
        itemCount: donutsOnSale.length, //Longitud de los elementos[3]
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5), //Dos columnas [4] //
        itemBuilder: (context, index) {
          return DonutTile(
            //[5]
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            imageName: donutsOnSale[index][3],
          );
        });
  } // Crear el archivo donut_tile en /utils [6]
}
