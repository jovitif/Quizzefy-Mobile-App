class Resposta {
  final String resposta;
  final bool correta;
  bool selected;
  bool context;
  Resposta(this.resposta, this.correta, this.selected, {this.context = false});

  void reset(bool newContext) {
    context = newContext;
    selected = false;
  }

}
