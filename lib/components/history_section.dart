import 'package:flutter/material.dart';
import 'package:qrappmobile/datas/history.dart';
import 'history_box.dart';

class HistorySection extends StatelessWidget {
  final HistoryInfos historyInfos;
  const HistorySection(this.historyInfos, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Row(children: [
        Expanded(
            child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(2),
            ),
            color: Color(0xFFD47332),
          ),
          child: const Text("Hier",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )),
      ]),
      HistoryBox(historyInfos),
    ]);
  }
}
