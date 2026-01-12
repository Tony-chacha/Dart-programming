class DifferenceOfSquares {
  int squareOfSum(int n) {
    int chachaAdd = 0;
    for (int i = 1; i <= n; i++) {
      chachaAdd += i;
    }
    return chachaAdd * chachaAdd;
  }

  int sumOfSquares(int n) {
    int gatiSquare = 0;
    for (int i = 1; i <= n; i++) {
      gatiSquare += i * i;
    }
    return gatiSquare;
  }

  int differenceOfSquares(int n) {
    return squareOfSum(n) - sumOfSquares(n);
  }
}
