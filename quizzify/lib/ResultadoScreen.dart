import 'package:flutter/material.dart';

class ResultadoScreen extends StatelessWidget {
  final int pontos;

  ResultadoScreen(this.pontos);

  String _obterMensagem() {
    if (pontos < 7) {
      return 'Precisa estudar mais meu amigo! mas você ira vencer';
    } else if (pontos >= 7 && pontos <= 9) {
      return 'Cai na real tu consegue melhorar mais! eu acredito em ti';
    } else {
      return 'HOOWWWW LOOOK AT HIMMMMM, PARECE QUE TEMOS UM ALBERTO AISTEN ENTRE NÓS';
    }
  }

  String _obterEmoji() {
    if (pontos < 7) {
      return 'assets/bad-review.png'; // Substitua com o caminho do emoji triste
    } else if (pontos >= 7 && pontos <= 9) {
      return 'assets/calm.png'; // Substitua com o caminho do emoji calmo
    } else {
      return 'assets/happy.png'; // Substitua com o caminho do emoji feliz
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pontuação Final:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$pontos pontos',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              _obterMensagem(),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Image.asset(
              _obterEmoji(),
              width: 60,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
