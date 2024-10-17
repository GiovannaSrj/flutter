import 'package:flutter/material.dart';
import '/screens/onboarding_screen.dart'; // Aponte para o arquivo correto de onboarding

void main() {
  runApp(MyApp()); // Remova o 'const' daqui
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitBody App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.black, // Cor do fundo preta
      ),
      home: OnboardingScreen(), // Remova o 'const' daqui também
    );
  }
}
