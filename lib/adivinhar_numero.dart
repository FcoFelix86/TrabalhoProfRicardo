import 'package:flutter/material.dart';
import 'dart:math';

class TelaAdivinharNumero extends StatefulWidget {
  const TelaAdivinharNumero({super.key});

  @override
  State<TelaAdivinharNumero> createState() => _TelaAdivinharNumeroState();
}

class _TelaAdivinharNumeroState extends State<TelaAdivinharNumero> {
  final TextEditingController _controller = TextEditingController();
  final int _numeroAleatorio = Random().nextInt(10) + 1;
  String _resultado = "Tente adivinhar o número de 1 a 10!";

  void verificar() {
    int? numeroUsuario = int.tryParse(_controller.text);
    if (numeroUsuario == null) {
      setState(() {
        _resultado = "Digite um número válido!";
      });
      return;
    }

    setState(() {
      if (numeroUsuario == _numeroAleatorio) {
        _resultado = "Parabéns! Você acertou!";
      } else {
        _resultado = "Errado! Tente novamente.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adivinhar Número')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Seu palpite'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: verificar, child: const Text('Verificar')),
            const SizedBox(height: 20),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
