class HighScores {
 final List<int> scores;

  HighScores(this.scores);

  int latest() {
   return scores.last;
  }

  List<int> personalTopThree() {
    List<int> topThree = List.from(scores)..sort((a, b) => b.compareTo(a));
    return topThree.take(3).toList();
  }

  int personalBest() {
    return scores.reduce((a, b) => a > b ? a : b);
  }
}