import 'package:flutter/material.dart';
import 'input.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController myController =
      TextEditingController();
    return MyInput(
      icon: Icons.filter_list,
      placeHolder: "Rechercher",
      controller: myController,
      height: 35,
    );
  }

}
