import 'package:flutter/material.dart';
import 'Pergunta.dart';
import 'Resposta.dart';
import 'ResultadoScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int perguntaIndex = 0;
  int pontos = 0;
  bool canClick = true;
  bool clicked = false;

  void _responder(Resposta alternativa) {
    setState(() {
      if (!alternativa.correta && canClick) {
        pontos--;
        alternativa.selected = true;
        clicked = true;
      }
      if (alternativa.correta && canClick) {
        pontos++;
      }

      canClick = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Pergunta> perguntas = [
      Pergunta(
        img: 'assets/matematica.jpg',
        AppLocalizations.of(context)!.pergunta01,
        [
          Resposta('31', true, false),
          Resposta('35', false, false),
          Resposta('29', false, false),
          Resposta('32', false, false),
        ],
      ),
      Pergunta(
        img: 'assets/presidentes.jpg',
        AppLocalizations.of(context)!.pergunta02,
        [
          Resposta('Lula', true, false),
          Resposta('Bolsonaro', false, false),
          Resposta('Trump', false, false),
          Resposta('Dilma Rousseff', false, false),
        ],
      ),
      Pergunta(
        img: 'assets/franca.webp',
        AppLocalizations.of(context)!.pergunta03,
        [
          Resposta('Madrid', false, false),
          Resposta('Berlim', false, false),
          Resposta('Roma', false, false),
          Resposta('Paris', true, false),
        ],
      ),
      Pergunta(
        img: 'assets/dom-quixote.jpg',
        AppLocalizations.of(context)!.pergunta04,
        [
          Resposta('Fernando Pessoa', false, false),
          Resposta('Miguel de Cervantes', true, false),
          Resposta('Gabriel García Márquez', false, false),
          Resposta('Jorge Luis Borges', false, false),
        ],
      ),
      Pergunta(
        img: 'assets/sist-solar.webp',
        AppLocalizations.of(context)!.pergunta05,
        [
          Resposta(AppLocalizations.of(context)!.terra, false, false),
          Resposta(AppLocalizations.of(context)!.marte, false, false),
          Resposta(AppLocalizations.of(context)!.venus, false, false),
          Resposta(AppLocalizations.of(context)!.jupiter, true, false),
        ],
      ),
      Pergunta(
        img: 'assets/oxigenio.jpg',
        AppLocalizations.of(context)!.pergunta06,
        [
          Resposta('O', true, false),
          Resposta('Ox', false, false),
          Resposta('Oi', false, false),
          Resposta('Oz', false, false),
        ],
      ),
      Pergunta(
        img: 'assets/monalisa.jpg',
        AppLocalizations.of(context)!.pergunta07,
        [
          Resposta('Pablo Picasso', false, false),
          Resposta('Vincent van Gogh', false, false),
          Resposta('Leonardo da Vinci', true, false),
          Resposta('Michelangelo', false, false),
        ],
      ),
      Pergunta(
        img: 'assets/mapa.webp',
        AppLocalizations.of(context)!.pergunta08,
        [
          Resposta(AppLocalizations.of(context)!.vaticano, true, false),
          Resposta(AppLocalizations.of(context)!.monaco, false, false),
          Resposta(AppLocalizations.of(context)!.nauru, false, false),
          Resposta(AppLocalizations.of(context)!.maldivas, false, false),
        ],
      ),
      Pergunta(
        img: 'assets/corpo-humano.png',
        AppLocalizations.of(context)!.pergunta09,
        [
          Resposta(AppLocalizations.of(context)!.coracao, false, false),
          Resposta(AppLocalizations.of(context)!.pulmoes, false, false),
          Resposta(AppLocalizations.of(context)!.figado, false, false),
          Resposta(AppLocalizations.of(context)!.pele, true, false),
        ],
      ),
      Pergunta(
        img: 'assets/arco-iris.webp',
        AppLocalizations.of(context)!.pergunta10,
        [
          Resposta('5', false, false),
          Resposta('6', false, false),
          Resposta('7', true, false),
          Resposta('8', false, false),
        ],
      ),
      Pergunta(
          img: 'assets/futebol.jpg',
          AppLocalizations.of(context)!.pergunta11,
          [
            Resposta('12', false, false),
            Resposta('7', true, false),
            Resposta('10', false, false),
            Resposta('6', false, false),
          ]),
      Pergunta(
          img: 'assets/sol.jpg',
          AppLocalizations.of(context)!.pergunta12,
          [
            Resposta(AppLocalizations.of(context)!.minutos8, true, false),
            Resposta(AppLocalizations.of(context)!.minutos12, false, false),
            Resposta(AppLocalizations.of(context)!.horas8, false, false),
            Resposta(AppLocalizations.of(context)!.horas8, false, false),
          ]),
      Pergunta(
          img: 'assets/abaporu.webp',
          AppLocalizations.of(context)!.pergunta13,
          [
            Resposta('Anita Malfatti', false, false),
            Resposta('Candido Portinari', false, false),
            Resposta('Romero Britto', false, false),
            Resposta('Tarsila do Amaral', true, false),
          ]),
      Pergunta(
          img: 'assets/sist-respiratorio.webp',
          AppLocalizations.of(context)!.pergunta14,
          [
            Resposta(
                AppLocalizations.of(context)!.pulmoesefaringe, false, false),
            Resposta(
                AppLocalizations.of(context)!.esofagoebronquios, false, false),
            Resposta(
                AppLocalizations.of(context)!.laringeetraqueias, true, false),
            Resposta(
                AppLocalizations.of(context)!.pancreasevasos, false, false),
          ]),
      Pergunta(
          img: 'assets/usina.webp',
          AppLocalizations.of(context)!.pergunta15,
          [
            Resposta(AppLocalizations.of(context)!.russiaespanha, false, false),
            Resposta(AppLocalizations.of(context)!.ucraniabrasil, true, false),
            Resposta(AppLocalizations.of(context)!.estadosunidoseucrania, false,
                false),
            Resposta(AppLocalizations.of(context)!.japaoebrasil, false, false),
          ]),
      Pergunta(
          img: 'assets/fogo.webp',
          AppLocalizations.of(context)!.pergunta16,
          [
            Resposta(AppLocalizations.of(context)!.paleolitico, true, false),
            Resposta(AppLocalizations.of(context)!.neolitico, false, false),
            Resposta(AppLocalizations.of(context)!.idademetais, false, false),
            Resposta(AppLocalizations.of(context)!.pedrapolida, false, false),
          ]),
      Pergunta(
          img: 'assets/existo.webp',
          AppLocalizations.of(context)!.pergunta17,
          [
            Resposta(AppLocalizations.of(context)!.platao, false, false),
            Resposta(AppLocalizations.of(context)!.socrates, false, false),
            Resposta(AppLocalizations.of(context)!.descartes, true, false),
            Resposta(AppLocalizations.of(context)!.voltaire, false, false),
          ]),
      Pergunta(
          img: 'assets/portugues.webp',
          AppLocalizations.of(context)!.pergunta18,
          [
            Resposta(AppLocalizations.of(context)!.filipinas, false, false),
            Resposta(AppLocalizations.of(context)!.portugal, false, false),
            Resposta(AppLocalizations.of(context)!.mocambique, false, false),
            Resposta(AppLocalizations.of(context)!.macau, true, false),
          ]),
    ];

    void _clear() {
      setState(() {
        for (var resposta in perguntas[perguntaIndex].alternativas) {
          resposta.selected = false;
        }
      });
    }

    void _proximo() {
      setState(() {
        perguntaIndex = (perguntaIndex + 1) % perguntas.length;
        canClick = true;
        clicked = false;

        if (perguntaIndex == 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ResultadoScreen(pontos)),
          );
        }
        _clear();
      });
    }

    @override
    void initState() {
      super.initState();
      perguntas.shuffle();
      clicked = false;
      _clear();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzefy',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              margin: EdgeInsets.only(bottom: 60.0),
              // constraints: BoxConstraints(maxHeight: 250),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      perguntas[perguntaIndex].texto,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  if (perguntas[perguntaIndex].img.isNotEmpty)
                    Image.asset(
                      perguntas[perguntaIndex].img,
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.199,
                      fit: BoxFit.contain,
                    ),
                ],
              ),
            ),
            Column(
              children: perguntas[perguntaIndex]
                  .alternativas
                  .map((alternativa) => _buildRespostaButton(alternativa))
                  .toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(
                    left: 100.0, right: 100.0, top: 20.0, bottom: 20.0)),
              ),
              onPressed: _proximo,
              child: Text(
                AppLocalizations.of(context)!.proximaPergunta,
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '${AppLocalizations.of(context)!.pontos} $pontos',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRespostaButton(Resposta alternativa) {
    print("teste: ${alternativa.selected}");
    if (!canClick && alternativa.correta == true) {
      return ElevatedButton(
        onPressed: () => _responder(alternativa),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFF92E3A9)),
          minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width * 0.9, 40.0)),
        ),
        child: Text(
          alternativa.resposta,
          style: TextStyle(
            color: Color(0xFF1B5E20),
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
      );
    } else if (!canClick && clicked) {
      return ElevatedButton(
        onPressed: () => _responder(alternativa),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFFEF5350)),
          minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width * 0.9, 40.0)),
        ),
        child: Text(
          alternativa.resposta,
          style: TextStyle(
            color: Color(0xFF790000),
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: () => _responder(alternativa),
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
