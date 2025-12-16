class Sum {
  int N;
  List<int> numbers = [];

  Sum(this.N);

  void buildNums() {
    for (int i = 1; i <= N; i++) {
      numbers.add(i);
    }
  }

  int computeSum() {
    int sum = 0;
    for (int n in numbers) {
      sum += n;
    }
    return sum;
  }
}

void main() {
  Sum gatiSum = Sum(10);

  gatiSum.buildNums();

  int sum = gatiSum.computeSum();

  print("Numbers: ${gatiSum.numbers}");
  print("Sum: ${sum}");
}
