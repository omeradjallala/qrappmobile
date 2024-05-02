import 'package:flutter/material.dart';
import '../datas/history.dart';

class HistoryBox extends StatelessWidget {
  final HistoryInfos historyInfos;

  const HistoryBox(this.historyInfos, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      width: 350,

      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Color(0xFFEEEEEE),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            historyInfos.command.image,
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 15),
          Expanded(child: RightSide(historyInfos)),
        ]
      ),

    );
  }
}

class RightSide extends StatelessWidget {
  final HistoryInfos historyInfos;

  const RightSide(this.historyInfos, {super.key});

  @override
  Widget build(BuildContext context) {
    String detailLeft = '''
Table: ${historyInfos.command.table}
Additionnelles: rien
Type: ${historyInfos.command.type}
Nombre: ${historyInfos.command.number}''';

    String detailRight = '''
Servi a: ${historyInfos.from}
Commander a: ${historyInfos.to}
Duree: 36''';

    const detailTextStyle = TextStyle(
      fontSize: 9,
      color: Color(0xFF606060),
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      height: 1.5,
    );

    return Column(children: [
      Center(child: Text(
        historyInfos.command.name,
        style: const TextStyle(
          fontSize: 17,
          color: Color(0xFF6D6D6D),
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,

        ),
      )),
      const SizedBox(height: 5),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(detailLeft,
              style: detailTextStyle,
            )
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            color: const Color(0xFFCCCCCC),
            width: 2,
            height: 50,
          ),
          Expanded(
            child: Text(detailRight,
              style: detailTextStyle,
            )
          ),
        ],
      )
    ]);
  }
}
