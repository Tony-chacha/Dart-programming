class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    final BigInt original = BigInt.parse(number);
    final digits = number.split('').map(int.parse).toList();
    final int n = digits.length;

    BigInt sum = BigInt.zero;
    for (final d in digits) {
      BigInt powered = BigInt.one;
      for (int i = 0; i < n; i++) {
        powered *= BigInt.from(d);
      }
      sum += powered;
    }
    return sum == original;
  }
}
