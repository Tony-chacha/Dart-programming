class DifferenceOfSquares {
  int N;
  List<int> numbers = [];

  DifferenceOfSquares(this.N);

  void buildNumbers() {
    for (int i = 1; i <= N; i++) {
      numbers.add(i);
    }
  }

  int computeAdd() {
    int gatiAdd = 0;
    for (int n in numbers) {
      gatiAdd += n;
    }
    int gatiSquare = gatiAdd * gatiAdd;
    return gatiSquare;
  }

  int computeSquare() {
    int tonySquare = 0;
    for (int n in numbers) {
      tonySquare += n * n;
    }
    return tonySquare;
  }

  int computeSubtract() {
    int subtractAns = computeAdd() - computeSquare();
    return subtractAns;
  }
}

void main() {
  DifferenceOfSquares chachaDifference = DifferenceOfSquares(7);

  chachaDifference.buildNumbers();

  print("Numbers: ${chachaDifference.numbers}");

  print("\nSquare of the sum here");
  chachaDifference.computeAdd();
  print("Square of the sum: ${chachaDifference.computeAdd()}");

  print("\nSum of the squares here");
  chachaDifference.computeSquare();
  print("Sum of the squares: ${chachaDifference.computeSquare()}");

  print("\nDifference of the squares here");
  chachaDifference.computeSubtract();
  print("Difference of the Squares: ${chachaDifference.computeSubtract()}");
}
