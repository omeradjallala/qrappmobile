import 'package:flutter/material.dart';
import '../components/input.dart';
import '../components/button.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController identifiantController =
      TextEditingController();
    TextEditingController passwordController =
      TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Color(0xFFFFFFFF),
              ),

              child: Image.asset(
                'assets/login_icon.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 12),

            MyInput(
              icon: Icons.person,
              placeHolder: "Pseudo / telephone",
              controller: identifiantController,
            ),

            const SizedBox(height: 12),

            MyInput(
              icon: Icons.lock,
              placeHolder: "Mot de passe",
              controller: passwordController,
            ),

            const SizedBox(height: 12),

            MyButton("Se connecter",
              bgColor: Theme.of(context).primaryColor,
              onPress: () {
                Navigator.pushNamed(context, '/pending');
              },
            ),

          ]
        )
      ),
    );
  }

}
