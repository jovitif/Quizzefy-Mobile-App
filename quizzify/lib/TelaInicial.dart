import 'package:flutter/material.dart';
import 'package:quizzify/TelaIntermediaria.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quizzify',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4A148C),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/pensando.png'),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                AppLocalizations.of(context)!.boasVindas,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navega para a tela de quiz
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaIntermediaria()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFE1BEE7), // Cor de fundo
              ),
              child: Text(
                //'Jogar',
                AppLocalizations.of(context)!.botaoPlay,
                //AppLocalizations.of(context).,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: Color(0xFF4A148C), // Cor do texto
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              AppLocalizations.of(context)!.devPor,
              style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
