class QuizQuestion {//just a normal class as in oops ig
  QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
//list is not just a type, but also a class in flutter
  List<String> shuffledans() {
    final shuffledd = List.of(answers);
    shuffledd.shuffle();
    return shuffledd;
  }
}
