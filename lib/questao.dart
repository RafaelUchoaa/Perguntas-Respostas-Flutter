import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
