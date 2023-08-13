import 'package:flutter/material.dart';
import 'package:quizzify/QuizScreen.dart';
import 'package:quizzify/TelaIntermediaria.dart';

class TelaInicial extends StatelessWidget {
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
            Image.asset('assets/pensando.png'),
            Text(
              'Seja bem-vindo ao Quizzify!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'Aplicação feita por João Sales e Luiz Ryan.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navega para a tela de quiz
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaIntermediaria()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF92E3A9), // Cor de fundo
              ),
              child: Text(
                'JOGAR',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Cor do texto
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
