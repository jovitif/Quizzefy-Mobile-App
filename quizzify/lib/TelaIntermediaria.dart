import 'package:flutter/material.dart';
import 'QuizScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TelaIntermediaria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzify',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4A148C),
            )),
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
              AppLocalizations.of(context)!.instrucoes,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 2),
            Text(
              AppLocalizations.of(context)!.instrucoes2,
              style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navega para a tela de quiz
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFE1BEE7), // Cor de fundo
              ),
              child: Text(
                AppLocalizations.of(context)!.comecar,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: Color(0xFF4A148C), // Cor do texto
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
