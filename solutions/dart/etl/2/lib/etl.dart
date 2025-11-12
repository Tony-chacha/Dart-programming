class Etl {
  Map<String, int> transform(Map<String, List<String>> old) {
    final Map<String, int> newFormat = {};

    old.forEach((scoreString, letters) {
      final score = int.parse(scoreString);
      for (final letter in letters) {
        newFormat[letter.toLowerCase()] = score;
      }
    });
    return newFormat;
  }
}
