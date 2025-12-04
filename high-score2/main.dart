class HighScores {
  List<int> scores = [20, 34, 59, 70, 69, 88, 90];

  int highestScore() {
    return scores.reduce((a, b) => a > b ? a : b);
  }

  List<int> topThree() {
    List<int> copiedScores = List.from(scores)..sort((a, b) => b.compareTo(a));
    return copiedScores.take(3).toList();
  }

  int last_added() {
    return scores.last;
  }
}

void main() {
  HighScores list = HighScores();
  print(list.highestScore());

  var newestList = list.topThree();
  print(newestList);

  var lastnum = list.last_added();
  print(lastnum);
}
