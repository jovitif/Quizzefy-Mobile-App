import 'package:flutter/cupertino.dart';
import 'package:quizzify/Resposta.dart';

class Pergunta {
  final String texto;
  final List<Resposta> alternativas;
  Pergunta(this.texto, this.alternativas);

  static List<Pergunta> perguntas = [
    Pergunta(
      'Quanto é 1 + 1?',
      [
        Resposta('2', true),
        Resposta('3', false),
        Resposta('4', false),
        Resposta('11', false),
      ],
    ),
    Pergunta(
      'Quem é atualmente o presidente do Brasil?',
      [
        Resposta('Lule', true),
        Resposta('Bolsonare', false),
        Resposta('Trump', false),
        Resposta('Taylor Swift', false),
      ],
    ),
    Pergunta(
      'Qual é a capital da França?',
      [
        Resposta('Madrid', false),
        Resposta('Berlim', false),
        Resposta('Roma', false),
        Resposta('Paris', true),
      ],
    ),
    Pergunta(
      'Quem escreveu "Dom Quixote"?',
      [
        Resposta('Fernando Pessoa', false),
        Resposta('Miguel de Cervantes', true),
        Resposta('Gabriel García Márquez', false),
        Resposta('Jorge Luis Borges', false),
      ],
    ),
    // Adicione mais perguntas aqui
    Pergunta(

      'Qual é o maior planeta do sistema solar?',
      [
        Resposta('Terra', false),
        Resposta('Marte', false),
        Resposta('Vênus', false),
        Resposta('Júpiter', true),
      ],
    ),
    Pergunta(
      'Qual é o símbolo químico do oxigênio?',
      [
        Resposta('O', true),
        Resposta('Ox', false),
        Resposta('Oi', false),
        Resposta('Oz', false),
      ],
    ),
    Pergunta(
      'Quem pintou a Mona Lisa?',
      [
        Resposta('Pablo Picasso', false),
        Resposta('Vincent van Gogh', false),
        Resposta('Leonardo da Vinci', true),
        Resposta('Michelangelo', false),
      ],
    ),
    Pergunta(
      'Qual é o menor país do mundo?',
      [
        Resposta('Vaticano', true),
        Resposta('Mônaco', false),
        Resposta('Nauru', false),
        Resposta('Maldivas', false),
      ],
    ),
    Pergunta(
      'Qual é o maior órgão do corpo humano?',
      [
        Resposta('Coração', false),
        Resposta('Pulmões', false),
        Resposta('Fígado', false),
        Resposta('Pele', true),
      ],
    ),
    Pergunta(
      'Quantas cores há no arco-íris?',
      [
        Resposta('5', false),
        Resposta('6', false),
        Resposta('7', true),
        Resposta('8', false),
      ],
    ),
  ];
}
