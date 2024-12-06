import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario(
    this.perguntas,
    this.perguntaSelecionada,
    this.responder, {
    super.key,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? List<Map<String, Object>>.from(
            perguntas[perguntaSelecionada]['resposta'] as List)
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((resposta) {
          return Resposta(
            resposta['texto'] as String,
            () => responder(resposta['nota'] as int),
            nota: resposta['nota'] as int,
          );
        }).toList(),
      ],
    );
  }
}
