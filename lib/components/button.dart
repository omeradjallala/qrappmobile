import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String value;
  final Color bgColor;
  final Size size;
  final Size maxSize;
  final VoidCallback onPress;

  const MyButton(
    this.value, {
    super.key,
    required this.onPress,
    this.bgColor = Colors.transparent,
    this.size = const Size(10, 50),
    this.maxSize = const Size(500, 500),
  });

  @override
  Widget build(BuildContext context) {
    Color realBgColor = (bgColor != Colors.transparent)
        ? bgColor
        : Theme.of(context).primaryColor;

    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(realBgColor),
        minimumSize: MaterialStateProperty.all<Size>(size),
        maximumSize: MaterialStateProperty.all<Size>(maxSize),
        // fixedSize: MaterialStateProperty.all<Size>(size),
      ),
      child: Text(value,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
        )),
    );
  }
}
