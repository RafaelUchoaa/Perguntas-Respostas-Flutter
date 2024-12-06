import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final VoidCallback reiniciar;

  const Resultado({
    super.key,
    required this.pontuacao,
    required this.reiniciar,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sua pontuação final foi:',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              '$pontuacao',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),

            // Mensagem de agradecimento
            const Text(
              'Obrigado por participar!',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 40),

            TextButton(
              onPressed: reiniciar,
              child: const Text(
                'Reiniciar Questionário',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
