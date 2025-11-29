void main() {
  HighScore player = HighScore();

  player.addScore(50);
  player.addScore(80);
  player.addScore(70);
  player.addScore(90, index: 1);

  player.printScores();
  print("Highest score: ${player.getHighest()}");
  print("Last added score: ${player.getLastAdded()}");
  print("Top 3 scores: ${player.getTopScores()}");
}

class HighScore {
  List<int> _scores = [];
  int? _lastAdded;

  void addScore(int score, {int? index}) {
    if (index != null && index >= 0 && index <= _scores.length) {
      _scores.insert(index, score);
    } else {
      _scores.add(score);
    }
    _lastAdded = score;
  }

  int? getHighest() {
    if (_scores.isEmpty) return null;
    return _scores.reduce((a, b) => a > b ? a : b);
  }

  int? getLastAdded() {
    return _lastAdded;
  }

  List<int> getTopScores([int n = 3]) {
    List<int> sorted = [..._scores]..sort((a, b) => b.compareTo(a));
    return sorted.take(n).toList();
  }

  void printScores() {
    print("All Scores: $_scores");
  }
}
