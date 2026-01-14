class Etl {
  Map<String, int> transform(Map<int, List<String>> old) {
    final Map<String, int> newFormat = {};

    old.forEach((score, letters) {
      for (final letter in letters) {
        newFormat[letter.toLowerCase()] = score;
      }
    });
    return newFormat;
  }
}
