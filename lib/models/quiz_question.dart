class QuizQuestion {
  //normal class
  QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
//list is not just a type, but also a class in flutter
  List<String> shuffledans() {
    final shuffledlist = List.of(answers);
    shuffledlist.shuffle();
    return shuffledlist;
  }
}
