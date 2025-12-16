class Difference {
  int N;
  List<int> nums = [];

  Difference(this.N);

  void buildNums() {
    for (int i = 1; i <= N; i++) {
      nums.add(i);
    }
  }

  int computeSum() {
    int sum = 0;
    for (int n in nums) {
      sum += n;
    }
    return sum;
  }

  int computeSumOfSquares() {
    int sumOfSquares = 0;
    for (int n in nums) {
      sumOfSquares += n * n;
    }
    return sumOfSquares;
  }

  int computeDifference() {
    int sum = computeSum();
    int squareOfSum = sum * sum;
    int sumOfSquares = computeSumOfSquares();
    return squareOfSum - sumOfSquares;
  }
}

void main() {
  Difference chachaNums = Difference(5);

  chachaNums.buildNums();

  int sum = chachaNums.computeSum();
  int squareOfSum = sum * sum;
  int sumOfSquares = chachaNums.computeSumOfSquares();
  int difference = chachaNums.computeDifference();

  print("Numbers: ${chachaNums.nums}");
  print("Sum: $sum");
  print("Square of the sum: $squareOfSum");
  print("Sum of the squares: $sumOfSquares");
  print("Difference: $difference");
}
