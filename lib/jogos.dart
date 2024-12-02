import 'package:flutter/material.dart';
import 'jokenpo.dart';
import 'cara_coroa.dart';
import 'adivinhar_numero.dart';

class TelaJogos extends StatelessWidget {
  const TelaJogos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jogos')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      leading: Image.asset('assets/jokenpo.png', width: 50),
                      title: const Text('Jokenpô'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TelaJokenpo(),
                          ),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.asset('assets/cara_coroa.png', width: 50),
                      title: const Text('Cara ou Coroa'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TelaCaraCoroa(),
                          ),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.asset('assets/adivinhar.png', width: 50),
                      title: const Text('Adivinhar Número'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TelaAdivinharNumero(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
