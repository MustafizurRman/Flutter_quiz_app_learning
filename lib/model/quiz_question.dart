class QuizQuestion {
  final String questionText;
  final List<String> answers;

  const QuizQuestion(this.questionText, this.answers);

  List<String> getShuffledAnswers() {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}