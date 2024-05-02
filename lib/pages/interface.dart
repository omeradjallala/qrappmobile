import 'package:flutter/material.dart';
import '../components/header.dart';

class InterfacePage extends StatelessWidget {
  final Widget page;
  final CrossAxisAlignment align;

  const InterfacePage(this.page, {super.key,
    this.align=CrossAxisAlignment.start
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(children: [
            Column(
              crossAxisAlignment: align,
              children: [
                const SizedBox(height: 70),
                page,
                const SizedBox(height: 40),
              ]
            ),
          ]),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: MyHeader(),
          ),
        ],
      ),
    );
  }
}
