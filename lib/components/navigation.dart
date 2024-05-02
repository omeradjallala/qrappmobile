import 'package:flutter/material.dart';

class MyNavigation extends StatelessWidget {
  final String actualPage;

  const MyNavigation(this.actualPage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.tightFor(),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),

        child: Container(
          width: 240,
          child: Row(
            children: [
              NavLi("En attentes", link: "pending", actualPage: actualPage),
              NavLi("Mes historiques", link: "histories", actualPage: actualPage),
            ],
          ),
        ));
  }
}

class NavLi extends StatelessWidget {
  final String value;
  final String actualPage;
  final String link;

  const NavLi(this.value, {super.key,
    required this.actualPage,
    required this.link
  });

  @override
  Widget build(BuildContext context) {
    Color color = (actualPage == link ?
    Colors.white : const Color(0xFF808080));
    Color bgColor = (actualPage == link
        ? Theme.of(context).primaryColor
        : Colors.transparent);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/$link');
      },
      child: Container(
        width: 120,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          color: bgColor,
        ),
        child: Text(value,
          style: TextStyle(
            fontSize: 12,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
