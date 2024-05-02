import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  final IconData icon;
  final TextEditingController controller;
  final double width;
  final double height;
  final String placeHolder;

  const MyInput({
    super.key,
    required this.icon,
    required this.controller,
    this.placeHolder="",
    this.width = 300.0,
    this.height = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Color(0xFFE8E8E8),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).primaryColor),
            const SizedBox(width: 8.0),
            Expanded(
              child: Container(
                height: 20,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: placeHolder,
                    hintStyle: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold
                    ),
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(fontSize: 12.0),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
