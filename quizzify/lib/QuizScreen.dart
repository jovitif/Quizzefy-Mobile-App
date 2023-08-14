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
  bool canClick = true;

  @override
  void initState() {
    super.initState();
    Pergunta.perguntas.shuffle(); // Embaralha as perguntas no início do quiz
  }

  void _responder(bool correta) {
    setState(() {
      mostraResposta = true;
    });

    if (correta && canClick) {
      pontos++;
    }

    canClick = false;
  }

  void _proximo() {
    setState(() {
      perguntaIndex = (perguntaIndex + 1) % Pergunta.perguntas.length;
      mostraResposta = false;
      canClick = true;

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
        title: const Text('Quizzify',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Center(
                child: Text(
                  Pergunta.perguntas[perguntaIndex].texto,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
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
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(
                    left: 100.0, right: 100.0, top: 20.0, bottom: 20.0)),
              ),
              onPressed: _proximo,
              child: Text(
                'Próxima Pergunta',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Pontos: $pontos'),
          ],
        ),
      ),
    );
  }

  Widget _teste() {
    if (!canClick) {
      return Text(
        'affs',
      );
    } else {
      return Text(
        'oie',
      );
    }
  }

  Widget _buildRespostaButton(Resposta alternativa) {
    if (!canClick && alternativa.correta == true) {
      return ElevatedButton(
        onPressed: () => _responder(alternativa.correta),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFF92E3A9)),
          minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width * 0.9, 40.0)),
        ),
        child: Text(
          alternativa.resposta,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: () => _responder(alternativa.correta),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width * 0.9, 40.0)),
        ),
        child: Text(
          alternativa.resposta,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
      );
    }
  }
}
