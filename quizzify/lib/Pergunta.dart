import 'package:flutter/cupertino.dart';
import 'Resposta.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'l10n/L10n.dart';

class Pergunta {
  final String texto;
  final List<Resposta> alternativas;
  final String img;
  Pergunta(this.texto, this.alternativas, {this.img = ""});
}
