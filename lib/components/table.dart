import 'package:flutter/material.dart';
import 'command_box.dart';

class MyTable extends StatelessWidget {
  final List<Widget> commands;
  final int tableNb;
  final foodsInfos = [
    {
      'image': "assets/foods/chawarma.png",
      'name': "Chawarma",
      'table': 1,
      'since': 25,
      'additionals': ["saucisse"],
      'type': "a la carte",
      'number': 2,
    },
    {
      'image': "assets/foods/Mayura.png",
      'name': "Mayura",
      'table': 1,
      'since': 25,
      'additionals': [],
      'type': "menu du jour",
      'number': 1,
    },
    {
      'image': "assets/foods/Papa John's.png",
      'name': "Papa John's",
      'table': 7,
      'since': 242,
      'additionals': [],
      'type': "a la carte",
      'number': 2,
    },
  ];

  MyTable(this.tableNb, this.commands, {super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> foodWidgets = [];
    
    for (var foodInfos in foodsInfos) {
      foodWidgets.add(MyCommand(foodInfos));
    }

    return Container(
        width: 300,

        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          color: const Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 15),
            ),
          ],
        ),


      // decoration: BoxDecoration(
      //   color: Colors.white,
      // ),

        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Column(children: [
            MyTableHeader(tableNb, commands),
            ...foodWidgets,
          ])));
  }
}



class MyTableHeader extends StatelessWidget {
  final List<Widget> commands;
  final int tableNb;
  final foodsInfos = [
    {
      'image': "assets/foods/chawarma.png",
      'name': "Chawarma",
      'table': 1,
      'since': 25,
      'additionals': ["saucisse"],
      'type': "a la carte",
      'number': 2,
    },
    {
      'image': "assets/foods/Mayura.png",
      'name': "Mayura",
      'table': 1,
      'since': 25,
      'additionals': [],
      'type': "menu du jour",
      'number': 1,
    },
    {
      'image': "assets/foods/Papa John's.png",
      'name': "Papa John's",
      'table': 7,
      'since': 242,
      'additionals': [],
      'type': "a la carte",
      'number': 2,
    },
  ];

  MyTableHeader(this.tableNb, this.commands, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Table $tableNb',
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$tableNb',
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
