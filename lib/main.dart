import 'package:flutter/material.dart';
import 'combustivel.dart';
import 'frases.dart';
import 'jogos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Principal'),
        backgroundColor: Color(0xfff98a09), // Cor do AppBar
      ),
      backgroundColor: Color(0xffbebfbf), // Cor de fundo da tela
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaCombustivel(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffffffff), // Cor de fundo do botão
                padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20), // Aumentando o tamanho do botão
                textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight:
                        FontWeight.bold), // Aumentando o tamanho do texto
              ),
              child: const Text('Combustível'),
            ),
            const SizedBox(height: 20), // Espaçamento entre os botões
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaFrases(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffffffff), // Cor de fundo do botão
                padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20), // Aumentando o tamanho do botão
                textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight:
                        FontWeight.bold), // Aumentando o tamanho do texto
              ),
              child: const Text('Frases do Dia'),
            ),
            const SizedBox(height: 20), // Espaçamento entre os botões
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaJogos(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffffffff), // Cor de fundo do botão
                padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20), // Aumentando o tamanho do botão
                textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight:
                        FontWeight.bold), // Aumentando o tamanho do texto
              ),
              child: const Text('Jogos'),
            ),
          ],
        ),
      ),
    );
  }
}
