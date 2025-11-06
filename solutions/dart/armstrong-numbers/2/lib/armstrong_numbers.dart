import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    final int original = int.parse(number);
    final digits = number.split('').map(int.parse).toList();
    final int n = digits.length;

    int sum = 0;
    for (final d in digits) {
      sum += pow(d, n).toInt();
    }
    return sum == original;
  }
}
