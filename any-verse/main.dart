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
}
