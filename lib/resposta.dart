import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  final int nota;

  const Resposta(this.texto, this.quandoSelecionado,
      {required this.nota, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          onPressed: quandoSelecionado,
          child: Text(
            texto,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
