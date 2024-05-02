import 'package:flutter/material.dart';
import 'package:qrappmobile/datas/history.dart';
import 'history_title.dart';
import 'history_box.dart';

class HistorySection extends StatelessWidget {
  final HistoryInfos historyInfos;
  const HistorySection(this.historyInfos, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HistoryTitle("Hier"),
        HistoryBox(historyInfos),
      ]
    );
  }
}
