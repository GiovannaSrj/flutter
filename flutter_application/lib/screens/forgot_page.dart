import 'package:flutter/material.dart';
import 'password_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Cor de fundo principal
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Cabeçalho de navegação
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Color(0xFFF9F871)),
                  onPressed: () {
                    Navigator.pop(context); // Navegar para a tela anterior
                  },
                ),
                const Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Forgotten Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF9F871), // Cor do título
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80), // Espaçamento para centralizar os textos
            const Text(
              'Forgot Password?', // Título principal
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),

            // Campo de e-mail dentro de um container roxo claro
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFB394F6), // Cor de fundo do container (roxo claro)
                borderRadius: BorderRadius.circular(0), // Bordas arredondadas
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your email address',
                  labelStyle: const TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white, // Fundo branco para o campo de entrada
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),

            // Botão de Continuar
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  ResetPasswordPage()), // Abrir página de cadastro
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF232323), // Cor do botão (cinza escuro)
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // Cor do texto do botão
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
