class AtbashCipher {
  //when we declare the class AtbashCipher() tests create an instance and calls its methods, the methods must be instance methods not static ones.
  final _a =
      'abcdefghijklmnopqrstuvwxyz'; // these are two instance fields of type string.
  final _z =
      'zyxwvutsrqponmlkjihgfedcba'; // final means the references cannot be reassigned after the object is constructed.

  String encode(String text) {
    //defines the encode method, takes one string parameter called text.
    final s = text.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'),
        ''); // this means convert the input to lowercase, then replace everything in between a-z and 0-9 with an empty string. Then store the final result in s
    final c = s.split('').map((ch) {
      final i =
          _a.indexOf(ch); // .indexOf(ch) returns -1 if something doesn't exist.
      return i == -1
          ? ch
          : _z[
              i]; // this is an if-else statement. if i is equal to -1 give me back that character, else, we take it's corresponding reversed letter from z.
    }).join();
    return RegExp('.{1,5}').allMatches(c).map((m) => m.group(0)!).join(
        ' '); // creates a regular expression, which matches a group of 1-5 ch, and joins them with spaces.
  }

  String decode(String text) {
    final s = text.replaceAll(' ', '');
    return s.split('').map((ch) {
      final i = _z.indexOf(
          ch); // here we want to find where this character is located in the  reversed string.
      return i == -1
          ? ch
          : _a[
              i]; // so here we are saying, give me the character at that index from a.
    }).join(); // then join them up.
  }
}
