class Multiply {
  int N;
  List<int> numbers = [];

  Multiply(this.N);

  void buildNumbers() {
    for (int i = 1; i <= N; i++) {
      numbers.add(i);
    }
  }

  int computeMultiply() {
    int chachaMultiply = 1;
    for (int n in numbers) {
      chachaMultiply *= n;
    }
    return chachaMultiply;
  }
}

void main() {
  Multiply gatiMultiply = Multiply(4);

  gatiMultiply.buildNumbers();

  print("Numbers: ${gatiMultiply.numbers}");
  print("Answer: ${gatiMultiply.computeMultiply()}");
}
