import 'package:flutter/material.dart';
import 'dart:math';

class TelaFrases extends StatefulWidget {
  const TelaFrases({super.key});

  @override
  State<TelaFrases> createState() => _TelaFrasesState();
}

class _TelaFrasesState extends State<TelaFrases> {
  final List<String> _frases = [
    "Acredite nos seus sonhos.",
    "Você é mais forte do que imagina.",
    "A persistência leva ao sucesso.",
    "Cada dia é uma nova oportunidade."
  ];

  String _fraseAtual = "Clique no botão para uma nova frase.";

  void gerarFrase() {
    final random = Random();
    setState(() {
      _fraseAtual = _frases[random.nextInt(_frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Frases do Dia')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _fraseAtual,
              style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: gerarFrase,
              child: const Text('Nova Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
