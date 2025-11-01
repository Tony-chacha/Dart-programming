import 'package:atbash_cipher/atbash_cipher.dart';

void main() {
  final cipher = AtbashCipher();

  print(cipher.encode('Anthony Chacha Gati'));
  print(cipher.encode('Bercyl Mwita Gati'));
}
