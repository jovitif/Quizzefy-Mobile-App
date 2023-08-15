class Resposta {
  final String resposta;
  final bool correta;
  bool selected;
  Resposta(this.resposta, this.correta, this.selected);

  setState(bool sel){
    this.selected = sel;
  }
}
