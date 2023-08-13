import 'package:flutter/material.dart';
import 'package:quizzify/Pergunta.dart'; // Importe a classe Pergunta
import 'package:quizzify/Resposta.dart'; // Importe a classe Resposta
import 'package:quizzify/ResultadoScreen.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int perguntaIndex = 0;
  bool mostraResposta = false;
  int pontos = 0;

  @override
  void initState() {
    super.initState();
    Pergunta.perguntas.shuffle(); // Embaralha as perguntas no início do quiz
  }

  void _responder(bool correta) {
    setState(() {
      mostraResposta = true;
    });

    if (correta) {
      pontos++;
    }
  }

  void _proximo() {
    setState(() {
      perguntaIndex = (perguntaIndex + 1) % Pergunta.perguntas.length;
      mostraResposta = false;

      if (perguntaIndex == 0) {
        // Todas as perguntas foram respondidas
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ResultadoScreen(pontos)),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            Pergunta.perguntas[perguntaIndex].texto,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Column(
            children: Pergunta.perguntas[perguntaIndex].alternativas
                .map((alternativa) => _buildRespostaButton(alternativa))
                .toList(),
          ),
          SizedBox(height: 20),
          if (mostraResposta)
            Text(
              'Resposta: ${Pergunta.perguntas[perguntaIndex].alternativas.firstWhere((alternativa) => alternativa.correta).resposta}',
              style: TextStyle(fontSize: 16),
            ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _proximo,
            child: Text('Próxima Pergunta'),
          ),
          SizedBox(height: 20),
          Text('Pontos: $pontos'),
        ],
      ),
    );
  }

  Widget _buildRespostaButton(Resposta alternativa) {
    return ElevatedButton(
      onPressed: () => _responder(alternativa.correta),
      child: Text(alternativa.resposta),
    );
  }
}
