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

class Add {
  int N;
  List<int> numbers = [];

  Add(this.N);

  void buildNumbers() {
    for (int i = 1; i <= N; i++) {
      numbers.add(i);
    }
  }

  int computeAdd() {
    int chachaAdd = 0;
    for (int n in numbers) {
      chachaAdd += n;
    }
    return chachaAdd;
  }
}

void main() {
  Multiply gatiMultiply = Multiply(4);

  gatiMultiply.buildNumbers();

  print("Numbers: ${gatiMultiply.numbers}");
  print("Answer: ${gatiMultiply.computeMultiply()}");

  Add gatiAdd = Add(10);

  gatiAdd.buildNumbers();

  print("\nAddition here");
  print("Numbers:${gatiAdd.numbers}");
  print("Answer: ${gatiAdd.computeAdd()}");
}
