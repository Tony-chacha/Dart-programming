void main() {
  HighScores scoreparameters = HighScores();

  print(scoreparameters.score_length);

  var result = scoreparameters.newScore();

  print(result);
}

class HighScores {
  List<int> scores = [29, 50, 88, 96, 100, 75, 69];

  late int score_length;

  HighScores() {
    score_length = scores.length;
  }

  Map<String, int> newScore() {
    List<int> sorted = List.from(scores)..sort();

    return {"lowest": sorted.first, "highest": sorted.last};
  }

  // Map<String, int> getHighLow() {
  //   List<int> sorted = List.from(scores)..sort();

  //   int lowest = sorted.first;
  //   int highest = sorted.last;

  //   return {
  //     "lowest": lowest,
  //     "highest": highest,
  //   }
  // }
}
