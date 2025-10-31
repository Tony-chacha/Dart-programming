class AtbashCipher {
  final _a = 'abcdefghijklmnopqrstuvwxyz';
  final _z = 'zyxwvutsrqponmlkjihgfedcba';

  String encode(String text) {
    final s = text.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    final c = s.split('').map((ch) {
      final i = _a.indexOf(ch);
      return i == -1 ? ch : _z[i];
    }).join();
    return RegExp('.{1,5}').allMatches(c).map((m) => m.group(0)!).join(' ');
  }

  String decode(String text) {
    final s = text.replaceAll(' ', '');
    return s.split('').map((ch) {
      final i = _z.indexOf(ch);
      return i == -1 ? ch : _a[i];
    }).join();
  }
}
