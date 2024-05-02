import 'package:flutter/material.dart';
import '../components/navigation.dart';
import '../components/inputSearch.dart';
import '../components/table.dart';
import 'interface.dart';

class PendingPage extends StatelessWidget {
  final commandTabs = [
    "fdfed",
  ];

  PendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InterfacePage(
        align: CrossAxisAlignment.center,
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MyNavigation("pending"),
            const SizedBox(height: 20),
            const SearchInput(),
            const SizedBox(height: 20),
            MyTable(5, commandTabs.map((elem) => Text(elem)).toList()),
            const SizedBox(height: 20),
            MyTable(5, commandTabs.map((elem) => Text(elem)).toList()),
          ],
        )
      ),

    );
  }
}
