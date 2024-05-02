import 'package:flutter/material.dart';

class HistoryTitle extends StatelessWidget {
  final String historyDay;
  const HistoryTitle(this.historyDay, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),

      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(2),
        ),
        color: Color(0xFFD47332),
      ),

      child: Text(historyDay,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),

    );
  }
}
