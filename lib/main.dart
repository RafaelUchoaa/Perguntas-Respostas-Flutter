import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é seu jogo favorito?',
      'resposta': [
        {'texto': 'League of Legends', 'nota': 7},
        {'texto': 'Counter-Strike', 'nota': 8},
        {'texto': 'Call of duty Warzone', 'nota': 10},
        {'texto': 'Valorant', 'nota': 4},
      ],
    },
    {
      'texto': 'Qual é sua comida favorita?',
      'resposta': [
        {'texto': 'Strogonoff de Frango', 'nota': 10},
        {'texto': 'Parmegiana', 'nota': 7},
        {'texto': 'Costelinha com barbecue', 'nota': 9},
        {'texto': 'Macarrão ao molho branco', 'nota': 8},
      ],
    },
    {
      'texto': 'Qual é seu estilo de música favorito?',
      'resposta': [
        {'texto': 'Pop/Rock', 'nota': 8},
        {'texto': 'Pagode/Samba', 'nota': 10},
        {'texto': 'Sertanejo/Modão', 'nota': 10},
        {'texto': 'Funk/Rap', 'nota': 7},
      ],
    },
    {
      'texto': 'Qual é seu hobby favorito?',
      'resposta': [
        {'texto': 'Ler Livros', 'nota': 7},
        {'texto': 'Jogar vídeo-game', 'nota': 10},
        {'texto': 'Praticar esportes', 'nota': 10},
        {'texto': 'Estudar', 'nota': 8},
      ],
    },
  ];

  void _responder(int nota) {
    setState(() {
      _pontuacaoTotal += nota;
      if (temPerguntaSelecionada) {
        _perguntaSelecionada++;
      }
    });
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                _perguntas,
                _perguntaSelecionada,
                _responder,
              )
            : Resultado(
                pontuacao: _pontuacaoTotal,
                reiniciar: _reiniciarQuestionario,
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
