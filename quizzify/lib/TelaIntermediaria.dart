import 'package:flutter/material.dart';
import 'QuizScreen.dart';

class TelaIntermediaria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzify'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Coloque o caminho correto para o seu GIF abaixo
            Image.asset('assets/dancing.gif'),

            SizedBox(height: 20),
            Text(
              'Instruções do Jogo:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'Responda às perguntas corretamente para acumular pontos!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                // Navega para a tela de quiz
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF92E3A9), // Cor de fundo
              ),
              child: Text(
                'PLAY',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Cor do texto
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
