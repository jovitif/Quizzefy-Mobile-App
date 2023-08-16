import 'package:flutter/cupertino.dart';
import 'package:quizzify/Resposta.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'l10n/L10n.dart';

class Pergunta {
  final String texto;
  final List<Resposta> alternativas;
  final String img;
  Pergunta(this.texto, this.alternativas, {this.img = ""});

  static List<Pergunta> perguntas = [
    Pergunta(
      img: 'assets/matematica.jpg',
      'Quanto é 18 + 13?',
      [
        Resposta('31', true, false),
        Resposta('35', false, false),
        Resposta('29', false, false),
        Resposta('32', false, false),
      ],
    ),
    Pergunta(
      img: 'assets/presidentes.jpg',
      'Quem é atualmente o presidente do Brasil?',
      [
        Resposta('Lula', true, false),
        Resposta('Bolsonaro', false, false),
        Resposta('Trump', false, false),
        Resposta('Taylor Swift', false, false),
      ],
    ),
    Pergunta(
      img: 'assets/franca.webp',
      'Qual é a capital da França?',
      [
        Resposta('Madrid', false, false),
        Resposta('Berlim', false, false),
        Resposta('Roma', false, false),
        Resposta('Paris', true, false),
      ],
    ),
    Pergunta(
      img: 'assets/dom-quixote.jpg',
      'Quem escreveu "Dom Quixote"?',
      [
        Resposta('Fernando Pessoa', false, false),
        Resposta('Miguel de Cervantes', true, false),
        Resposta('Gabriel García Márquez', false, false),
        Resposta('Jorge Luis Borges', false, false),
      ],
    ),
    // Adicione mais perguntas aqui
    Pergunta(
      img: 'assets/sist-solar.webp',
      'Qual é o maior planeta do sistema solar?',
      [
        Resposta('Terra', false, false),
        Resposta('Marte', false, false),
        Resposta('Vênus', false, false),
        Resposta('Júpiter', true, false),
      ],
    ),
    Pergunta(
      img: 'assets/oxigenio.jpg',
      'Qual é o símbolo químico do oxigênio?',
      [
        Resposta('O', true, false),
        Resposta('Ox', false, false),
        Resposta('Oi', false, false),
        Resposta('Oz', false, false),
      ],
    ),
    Pergunta(
      img: 'assets/monalisa.jpg',
      'Quem pintou a Mona Lisa?',
      [
        Resposta('Pablo Picasso', false, false),
        Resposta('Vincent van Gogh', false, false),
        Resposta('Leonardo da Vinci', true, false),
        Resposta('Michelangelo', false, false),
      ],
    ),
    Pergunta(
      img: 'assets/mapa.webp',
      'Qual é o menor país do mundo?',
      [
        Resposta('Vaticano', true, false),
        Resposta('Mônaco', false, false),
        Resposta('Nauru', false, false),
        Resposta('Maldivas', false, false),
      ],
    ),
    Pergunta(
      img: 'assets/corpo-humano.png',
      'Qual é o maior órgão do corpo humano?',
      [
        Resposta('Coração', false, false),
        Resposta('Pulmões', false, false),
        Resposta('Fígado', false, false),
        Resposta('Pele', true, false),
      ],
    ),
    Pergunta(
      img: 'assets/arco-iris.webp',
      'Quantas cores há no arco-íris?',
      [
        Resposta('5', false, false),
        Resposta('6', false, false),
        Resposta('7', true, false),
        Resposta('8', false, false),
      ],
    ),
    Pergunta(
        img: 'assets/futebol.jpg',
        'Qual o número mínimo de jogadores em cada time numa partida de futebol?',
        [
          Resposta('12', false, false),
          Resposta('7', true, false),
          Resposta('10', false, false),
          Resposta('6', false, false),
        ]),
    Pergunta(
        img: 'assets/sol.jpg',
        'Quanto tempo a luz do Sol demora para chegar à Terra?',
        [
          Resposta('8 minutos', true, false),
          Resposta('12 minutos', false, false),
          Resposta('8 horas', false, false),
          Resposta('12 horas', false, false),
        ]),
    Pergunta(
        img: 'assets/abaporu.webp',
        'As obras Abaporu, Operários e Antropofagia foram pintadas por qual artista brasileiro?',
        [
          Resposta('Anita Malfatti', false, false),
          Resposta('Candido Portinari', false, false),
          Resposta('Romero Britto', false, false),
          Resposta('Tarsila do Amaral', true, false),
        ]),
    Pergunta(
        img: 'assets/sist-respiratorio.webp',
        'Quais dos órgãos abaixo pertencem ao sistema respiratório humano?',
        [
          Resposta('Pulmões e faringe', false, false),
          Resposta('Esôfago e brônquios', false, false),
          Resposta('Laringe e traqueia', true, false),
          Resposta('Pâncreas e vasos sanguíneos', false, false),
        ]),
    Pergunta(
        img: 'assets/usina.webp',
        'Chernobyl e Césio-137 fazem parte dos maiores acidentes nucleares da história. Em que países aconteceram?',
        [
          Resposta('Rússia e Espanha', false, false),
          Resposta('Ucrânia e Brasil', true, false),
          Resposta('Estados Unidos e Ucrânia', false, false),
          Resposta('Japão e Brasil', false, false),
        ]),
    Pergunta(
        img: 'assets/fogo.webp',
        'Em que período da pré-história o fogo foi descoberto?',
        [
          Resposta('Paleolítico', true, false),
          Resposta('Neolítico', false, false),
          Resposta('Idade dos Metais', false, false),
          Resposta('Período da Pedra Polida', false, false),
        ]),
    Pergunta(
        img: 'assets/existo.webp',
        'De quem é a famosa frase “Penso, logo existo”?',
        [
          Resposta('Platão', false, false),
          Resposta('Sócrates', false, false),
          Resposta('Descartes', true, false),
          Resposta('Voltaire', false, false),
        ]),
    Pergunta(
        img: 'assets/portugues.webp',
        'Em qual local da Ásia o português é língua oficial?',
        [
          Resposta('Filipinas', false, false),
          Resposta('Portugal', false, false),
          Resposta('Moçambique', false, false),
          Resposta('Macau', true, false),
        ]),
  ];
}
