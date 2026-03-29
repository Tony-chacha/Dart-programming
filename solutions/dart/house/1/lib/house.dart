class House {
  List<String> expected = [
    "the house that Jack built.",
    "the malt that lay in",
    "the rat that ate",
    "the cat that killed",
    "the dog that worried",
    "the cow with the crumpled horn that tossed",
    "the maiden all forlorn that milked",
    "the man all tattered and torn that kissed",
    "the priest all shaven and shorn that married",
    "the rooster that crowed in the morn that woke",
    "the farmer sowing his corn that kept",
    "the horse and the hound and the horn that belonged to",
  ];

  String nyumba(int index) {
    if (index == 0) {
      return expected[0];
    }
    return "${expected[index]} ${nyumba(index - 1)}";
  }

  String wrapNyumba(int verse) {
    int index = verse - 1;
    return "This is ${nyumba(index)}";
  }

  String recite(int anza, int maliza) {
    StringBuffer majibu = StringBuffer();

    for (int i = anza; i <= maliza; i++) {
      majibu.write(wrapNyumba(i));
      if (i < maliza) majibu.writeln();
    }
    return majibu.toString().trimRight();
  }
}