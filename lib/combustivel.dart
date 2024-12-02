import 'package:flutter/material.dart';

class TelaCombustivel extends StatefulWidget {
  const TelaCombustivel({super.key});

  @override
  State<TelaCombustivel> createState() => _TelaCombustivelState();
}

class _TelaCombustivelState extends State<TelaCombustivel> {
  final TextEditingController _alcoolController = TextEditingController();
  final TextEditingController _gasolinaController = TextEditingController();
  String _resultado = "";

  void calcular() {
    // Lendo os valores digitados
    double? alcool = double.tryParse(_alcoolController.text);
    double? gasolina = double.tryParse(_gasolinaController.text);

    if (alcool == null || gasolina == null) {
      setState(() {
        _resultado = "Digite valores válidos!";
      });
    } else {
      // Lógica de comparação correta para o cálculo do combustível ideal
      if (alcool / gasolina <= 0.7) {
        setState(() {
          _resultado = "Abasteça com Álcool.";
        });
      } else {
        setState(() {
          _resultado = "Abasteça com Gasolina.";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escolha do Combustível')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Campo para o preço do álcool
            TextField(
              controller: _alcoolController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Preço do Álcool'),
            ),
            const SizedBox(height: 20),

            // Campo para o preço da gasolina
            TextField(
              controller: _gasolinaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Preço da Gasolina'),
            ),
            const SizedBox(height: 20),

            // Botão para acionar o cálculo
            ElevatedButton(
              onPressed: calcular,
              child: const Text('Calcular'),
            ),
            const SizedBox(height: 20),

            // Resultado do cálculo
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
