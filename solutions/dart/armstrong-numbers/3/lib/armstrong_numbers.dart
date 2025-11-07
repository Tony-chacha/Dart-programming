class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    final int original = int.parse(number);
    final digits = number.split('').map(int.parse).toList();
    final int n = digits.length;

    int sum = 0;
    for (final d in digits) {
      int powered = 1;
      for (int i = 0; i < n; i++) {
        powered *= d;
      }
      sum += powered;
    }
    return sum == original;
  }
}
