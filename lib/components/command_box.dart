import 'package:flutter/material.dart';
import '../components/button.dart';

class MyCommand extends StatelessWidget {
  final Map<String, Object> infos;
  const MyCommand(this.infos, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),

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
            '${infos['image']}',
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 15),
          Expanded(child: RightSide(infos))
        ],
      ),

    );
  }
}

class RightSide extends StatelessWidget {
  final Map<String, Object> infos;
  const RightSide(this.infos, {super.key});

  @override
  Widget build(BuildContext context) {

    String description = '''
Table: ${infos['table']}
Depuis: ${infos['since']}
Type: ${infos['type']}
Nombre: ${infos['number']}''';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text('${infos['name']}',
            style: TextStyle(
              fontSize: 15,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ),
        const SizedBox(height: 5),
        Text(description,
          style: const TextStyle(
            fontSize: 9,
            color: Color(0xFF333333),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Row(children: [
          const Spacer(),
          MyButton("Servi",
            fontSize: 9,
            size: const Size(20, 20),
            onPress: () {}
          ),
        ]),
      ]
    );
  }
}
