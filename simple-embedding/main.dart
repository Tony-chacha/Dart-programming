class SimpleEmbedding {
  String embed() {
    String hello() {
      return ("Hello");
    }

    String world() {
      return ("World!");
    }

    return "${hello()} ${world()}";
  }
}

class EmbedList {
  List<int> List1 = [1, 2];

  List<int> List2 = [3, 4];

  List<int> List4 = [29, 98];

  List<int> List5 = [5, 7];

  late List<dynamic> List3;

  EmbedList() {
    List3 = [1, 2, List1, List5, List4];
  }
}

void main() {
  SimpleEmbedding func = SimpleEmbedding();
  print(func.embed());

  EmbedList func1 = EmbedList();

  print(func1.List3);
}
