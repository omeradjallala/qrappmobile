import 'package:flutter/material.dart';
import 'interface.dart';
import '../components/button.dart';
import '../datas/user.dart';

class ProfilPage extends StatelessWidget {
  final commandTabs = [
    "fdfed",
  ];
  final UserInfos user = const UserInfos(
    name: "Du Bois",
    surname: "Jean Marc",
    pseudo: "Godzilla",
    tel: "66247224"
  );

  ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InterfacePage(Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(children: [
            const SizedBox(width: 20),
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.pushNamed(context, "/pending");
              },
            ),
          ]),

          Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/foods/chawarma.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20.0),
            DetailsContainer(user),
            const SizedBox(height: 20.0),
            MyButton("Se deconnecter",
              bgColor: Theme.of(context).primaryColor,
              onPress: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ])

        ],
      )),
    );
  }
}

class DetailsContainer extends StatelessWidget {
  final UserInfos user;

  const DetailsContainer(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [

      Expanded(child: Text(
        "Nom\nPrenoms\nPseudo\nTelephone",
        textAlign: TextAlign.end,
        style: TextStyle(
          height: 2.0,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      )),

      const SizedBox(width: 20.0),

      Expanded(child: Text(
        "${user.name}\n${user.surname}\n${user.pseudo}\n${user.tel}",
        textAlign: TextAlign.start,
        style: const TextStyle(
          height: 2.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF7E7E7E),
        ),
      )),

    ]);
  }
}
