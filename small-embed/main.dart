class SmallEmbed {
  List<String> elements = [
    "the house",
    "the cat that lived in",
    "the dog that chased",
  ];

  String buildRhyme(int index) {
    if (index == 0) {
      return elements[0];
    }

    return "${elements[index]} ${buildRhyme(index - 1)}";
  }
}

class ChachasJob {
  List<String> job = [
    //This is the job that Chacha prayed for that God has given him.
    "that God has given him.",
    "that Chacha prayed for",
    "the job",
  ];

  String newJob(int index) {
    if (index == 0) {
      return job[0];
    }
    return "${job[index]} ${newJob(index - 1)}";
  }
}

class AnthonyJob {
  List<String> job = [
    // The Lord who lives has remembered the lowly estate of his handmaid.
    "the lowly estate of his handmaid.",
    "has remembered",
    "Lord who lives",
  ];

  String perfectJob(int index) {
    if (index == 0) {
      return job[0];
    }
    return "${job[index]} ${perfectJob(index - 1)}";
  }
}

void main() {
  SmallEmbed embedSmall = SmallEmbed();
  print("This is ${embedSmall.buildRhyme(2)}");

  ChachasJob gratiasTibiDeus = ChachasJob();
  print("This is ${gratiasTibiDeus.newJob(2)}");

  AnthonyJob wow = AnthonyJob();
  print("The ${wow.perfectJob(2)}");
}
