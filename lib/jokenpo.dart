import 'package:flutter/material.dart';
import 'dart:math';

class TelaJokenpo extends StatefulWidget {
  const TelaJokenpo({super.key});

  @override
  State<TelaJokenpo> createState() => _TelaJokenpoState();
}

class _TelaJokenpoState extends State<TelaJokenpo> {
  final List<String> _opcoes = ['pedra', 'papel', 'tesoura'];
  String _resultado = "Escolha uma opção!";
  String _imagemUsuario = 'assets/default.png';
  String _imagemApp = 'assets/default.png';

  void jogar(String escolhaUsuario) {
    int escolhaApp = Random().nextInt(3);
    String escolhaComputador = _opcoes[escolhaApp];

    // Definir imagens
    setState(() {
      _imagemUsuario = 'assets/$escolhaUsuario.png';
      _imagemApp = 'assets/$escolhaComputador.png';

      // Definir resultado
      if ((escolhaUsuario == 'pedra' && escolhaComputador == 'tesoura') ||
          (escolhaUsuario == 'papel' && escolhaComputador == 'pedra') ||
          (escolhaUsuario == 'tesoura' && escolhaComputador == 'papel')) {
        _resultado = "Você venceu!";
      } else if (escolhaUsuario == escolhaComputador) {
        _resultado = "Empate!";
      } else {
        _resultado = "Você perdeu!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jokenpô')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(_imagemUsuario, width: 100),
              const Text('VS'),
              Image.asset(_imagemApp, width: 100),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            _resultado,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () => jogar('pedra'), child: const Text('Pedra')),
              ElevatedButton(
                  onPressed: () => jogar('papel'), child: const Text('Papel')),
              ElevatedButton(
                  onPressed: () => jogar('tesoura'),
                  child: const Text('Tesoura')),
            ],
          ),
        ],
      ),
    );
  }
}
