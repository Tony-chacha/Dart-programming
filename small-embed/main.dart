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

class ClintonsVisit {
  List<String> clintonVisit = [
    "For that I grant him the loyalty of friendship.",
    "I was happy that he decided to pay me a visit.",
    "Clinton called me and told me he is coming to Nairobi.",
  ];

  String goodFriend(int index) {
    if (index == 0) {
      return clintonVisit[0];
    }
    return "${clintonVisit[index]} ${goodFriend(index - 1)}";
  }
}

class FatherHood {
  List<String> father = [
    "For better or worse.",
    "I pray to God Almighty to help me cherish my parents forever.",
    "A father is a blessing to a child.",
  ];

  String fatherhood(int index) {
    if (index == 0) {
      return father[0];
    }
    return "${father[index]} ${fatherhood(index - 1)}";
  }
}

void main() {
  SmallEmbed embedSmall = SmallEmbed();
  print("This is ${embedSmall.buildRhyme(2)}");

  print("\nAbout Praise and Thanksgiving to God Almighty.");
  ChachasJob gratiasTibiDeus = ChachasJob();
  print("This is ${gratiasTibiDeus.newJob(2)}");

  print("\nAbout the job that God is working on for me.");
  AnthonyJob wow = AnthonyJob();
  print("The ${wow.perfectJob(2)}");

  print("\nAbout my Friend Clinton");
  ClintonsVisit niceVisit = ClintonsVisit();
  print(niceVisit.goodFriend(2));

  print("\nAbout FatherHood");
  FatherHood myFather = FatherHood();
  print(myFather.fatherhood(2));
}
