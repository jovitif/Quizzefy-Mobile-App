import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lottie/lottie.dart';

class ResultadoScreen extends StatelessWidget {
  final int pontos;

  ResultadoScreen(this.pontos);

  @override
  Widget build(BuildContext context) {
    String _obterMensagem() {
      if (pontos < 5) {
        return '${AppLocalizations.of(context)!.ruim}';
      } else if (pontos >= 5 && pontos <= 11) {
        return '${AppLocalizations.of(context)!.medio}';
      } else {
        return '${AppLocalizations.of(context)!.otimo}';
      }
    }

    String _obterEmoji() {
      if (pontos < 5) {
        return 'assets/bad-review.json';
      } else if (pontos >= 5 && pontos <= 11) {
        return 'assets/calm.json';
      } else {
        return 'assets/happy.json';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzefy',
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
            Text(
              AppLocalizations.of(context)!.pontuacaoFinal,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              '${AppLocalizations.of(context)!.pontos} $pontos',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                _obterMensagem(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height: 20),
            Lottie.asset(
              _obterEmoji(),
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
