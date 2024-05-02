import 'package:flutter/material.dart';
import 'pages/loading.dart';
import 'pages/login.dart';
import 'pages/pending.dart';
import 'pages/history.dart';
import 'pages/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qr App - Serveur',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFD47332),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingPage(),
        '/login': (context) => const LoginPage(),
        '/pending': (context) => PendingPage(),
        '/histories': (context) => HistoryPage(),
        '/profil': (context) => ProfilPage(),
      },
    );
  }
}
