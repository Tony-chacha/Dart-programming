class AnyVerse {
  List<String> anyVerse = [
    "the house.",
    "the cat that lived in",
    "the dog that chased",
  ];

  String goodVerse(int index) {
    if (index == 0) {
      return anyVerse[0]; // this gives me the base case.
    }
    return "${anyVerse[index]} ${goodVerse(index - 1)}";
  }

  String build(int index) {
    // basically this is a wrapper. I wrap goodverse func.
    return "This is ${goodVerse(index)}"; // this gives me the starting phrase.
  }
}

class LoveofGod {
  List<String> loveGod = [
    "the love of God",
    "what is done to the people who have",
    "my teacher who teaches me",
  ];

  String myLove(int index) {
    if (index == 0) {
      return loveGod[0];
    }
    return "${loveGod[index]} ${myLove(index - 1)}";
  }

  String wrapLove(int index) {
    return "This is ${myLove(index)}";
  }
}

class RememberGod {
  List<String> remember = [
    "the great wonders of the Lord.",
    "the great love and",
    "the wonderful mercies,",
    "the graciousness,",
  ];

  String rememberGod(int index) {
    if (index == 0) {
      return remember[0];
    }
    return "${remember[index]} ${rememberGod(index - 1)}";
  }

  String wrapRemember(int index) {
    return "Remember ${rememberGod(index)}";
  }
}

class House {
  List<String> house = [
    "the house that Jack built.",
    "the malt that lay in",
    "the rat that ate",
    "the cat that killed",
    "the dog that worried ",
    "the crumpled horn that tossed",
    "the cow with",
    "the maiden all forlorn that milked",
    "the man all tattered and torn that kissed",
    "the priest all shaven and shorn that married",
  ];

  String result(int index) {
    if (index == 0) {
      return house[0];
    }
    return "${house[index]} ${result(index - 1)}";
  }

  String recite(int index) {
    return "This is ${result(index)}";
  }

  String verse(int startVerse, int endVerse) {
    StringBuffer output = StringBuffer();

    for (int i = startVerse; i <= endVerse; i++) {
      output.writeln(recite(i));
      if (i < endVerse) output.writeln();
    }

    return output.toString().trimRight();
  }
}

class Chacha {
  List<String> names = [
    "Anthony Chacha who lives in that house.",
    "the brother of",
    "the genius friend of",
    "the sister to",
  ];

  String jina(int index) {
    if (index == 0) {
      return names[0];
    }
    return "${names[index]} ${jina(index - 1)}";
  }

  String wrapJina(int index) {
    return "This is ${jina(index)}";
  }

  String verseNames(int anza, int maliza) {
    StringBuffer kikapu = StringBuffer();

    for (int i = 0; i < maliza; i++) {
      kikapu.writeln(wrapJina(i));
      if (i < maliza) kikapu.writeln();
    }

    return kikapu.toString().trimRight();
  }
}

void main() {
  AnyVerse thisVerse = AnyVerse();
  print(thisVerse.build(2));

  print("\nHere I am building line by line.");
  for (int N = 0; N < thisVerse.anyVerse.length; N++) {
    print(thisVerse.build(N));
  }

  LoveofGod good = LoveofGod();
  print("\nThis is about the Love of God");
  for (int G = 0; G < good.loveGod.length; G++) {
    print(good.wrapLove(G));
  }

  print("\nAbout remembering God");
  RememberGod love = RememberGod();
  for (int i = 0; i < love.remember.length; i++) {
    print(love.wrapRemember(i));
  }

  print("\nAbout the house exercise on exercism");
  House newHouse = House();
  print(newHouse.verse(3, 5));

  print("\nAbout Chacha");
  Chacha jawabu = Chacha();
  print(jawabu.verseNames(0, 4));
}
