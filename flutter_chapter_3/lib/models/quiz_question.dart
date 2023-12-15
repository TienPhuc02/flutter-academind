class QuizQuestion {
  const QuizQuestion(this.text, this.answers, this.answer_correct);
  final String text;
  final List<String> answers;
  final String answer_correct;
  List<String> getShuffledAnswer() {
    final shuffleList = List.of(answers);
    shuffleList.shuffle();
    return shuffleList;
  }
}
