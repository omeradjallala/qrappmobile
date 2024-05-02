import 'package:flutter/material.dart';
import 'interface.dart';
import '../components/navigation.dart';
import '../components/history_section.dart';
import 'package:qrappmobile/datas/command.dart';
import 'package:qrappmobile/datas/history.dart';

class HistoryPage extends StatelessWidget {

  final List<HistoryInfos> historiesInfos = [
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
    HistoryInfos(
      command: CommandInfos(
        image: "assets/foods/chawarma.png",
        name: "Chawarma",
        table: 1,
        since: 25,
        additional: ["saucisse"],
        type: "a la carte",
        number: 2,
      ),
      from: "lol",
      to: "lol",
    ),
  ];

  HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> historiesWidgets = [];
    for (var historyInfos in historiesInfos) {
      historiesWidgets.add( HistorySection(historyInfos) );
    }

    return Scaffold(
      body: InterfacePage(
        align: CrossAxisAlignment.center,
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MyNavigation("histories"),
            const SizedBox(height: 20),
            ...historiesWidgets,
          ],
        )
      ),
    );
  }
}

