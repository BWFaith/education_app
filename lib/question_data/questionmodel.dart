class Questionmodel {
  final String questionText;
  final List<String> answers;
  Questionmodel(this.questionText, this.answers);

  List<String> shuffledanswers() {
    var shuffleanswers = List.of(answers);
    shuffleanswers.shuffle();
    return shuffleanswers;
  }
}
