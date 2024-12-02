import 'package:flutter/material.dart';
import 'dart:math';

class TelaCaraCoroa extends StatefulWidget {
  const TelaCaraCoroa({super.key});

  @override
  State<TelaCaraCoroa> createState() => _TelaCaraCoroaState();
}

class _TelaCaraCoroaState extends State<TelaCaraCoroa> {
  String _resultado = "Clique para jogar!";
  String _imagem = 'assets/default.png';
  String _imagemMaquina = 'assets/default.png';
  String _resultadoMaquina = "Máquina: Aguardando...";
  String _vencedor = "";

  void jogar(String escolhaUsuario) {
    // A escolha do usuário é passada como parâmetro
    bool escolhaUsuarioBool = escolhaUsuario == "Cara";

    // Escolha aleatória da máquina
    bool escolhaMaquinaBool = Random().nextBool();

    setState(() {
      // Imagem do usuário
      _imagem = escolhaUsuarioBool ? 'assets/cara.png' : 'assets/coroa.png';

      // Imagem da máquina
      _imagemMaquina =
          escolhaMaquinaBool ? 'assets/cara.png' : 'assets/coroa.png';

      // Resultado
      _resultado =
          escolhaUsuarioBool ? "Você escolheu Cara!" : "Você escolheu Coroa!";
      _resultadoMaquina = escolhaMaquinaBool
          ? "Máquina escolheu Cara!"
          : "Máquina escolheu Coroa!";

      // Verificando o vencedor
      if (escolhaUsuarioBool == escolhaMaquinaBool) {
        _vencedor = "Empate!";
      } else {
        _vencedor = escolhaUsuarioBool ? "Você ganhou!" : "Máquina ganhou!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cara ou Coroa')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment
            .center, // Garante que os itens fiquem centralizados horizontalmente
        children: [
          // Centralizando a imagem do usuário
          Center(
            child: Image.asset(_imagem, width: 150),
          ),
          const SizedBox(height: 20),
          // Centralizando a imagem da máquina
          Center(
            child: Image.asset(_imagemMaquina, width: 150),
          ),
          const SizedBox(height: 20),
          // Resultados
          Center(
            child: Text(
              _resultado,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              _resultadoMaquina,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          // Resultado final
          Center(
            child: Text(
              _vencedor,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          const SizedBox(height: 20),
          // Botões para o usuário escolher
          Center(
            child: ElevatedButton(
              onPressed: () => jogar("Cara"),
              child: const Text('Escolher Cara'),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () => jogar("Coroa"),
              child: const Text('Escolher Coroa'),
            ),
          ),
        ],
      ),
    );
  }
}
