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

class GotJob {
  late String Chacha;

  String newJob(String job) {
    Chacha = job;
    return Chacha;
  }
}

class EmbedString {
  List<dynamic> ListA = ["Gratias Tibi Deus, Gratias Tibi."];
  List<dynamic> ListB = ["Indeed, You are Great, I offer myself to You"];

  late List<dynamic> megaList;

  EmbedString() {
    megaList = ["Start", ListA, ListB, "End"];
  }
}

class NewEmbed {
  late String chachaJob;
  late String gatiJob;

  late List<dynamic> funcs;

  NewEmbed() {
    chachaJob = "Holy is your name, O God";
    gatiJob = "And mighty is your power";

    funcs = [chachaJob, gatiJob];
  }
}

class LastEmbed {
  List<String> job1 = ["It came as a surprise to me."];
  List<String> job2 = [
    "And a friend of mine was used by God as an instrument.",
  ];
  List<String> job3 = ["This friend of mine is called Clinton Mokaya"];
  List<String> job4 = ["Indeed, God is gracious and His mercy is everlasting."];

  late List<dynamic> combined;

  LastEmbed() {
    combined = [job1, job2, job3, job4];
  }
}

void main() {
  SimpleEmbedding func = SimpleEmbedding();
  print(func.embed());

  EmbedList func1 = EmbedList();

  print(func1.List3);

  GotJob VeryNew = GotJob();

  var jobNew = VeryNew.newJob("Chacha has got a new Job. Thanks be to God.");
  print(jobNew);

  EmbedString embedStrings = EmbedString();
  print(embedStrings.megaList);

  NewEmbed anthonyJob = NewEmbed();
  print(anthonyJob.funcs);
  print(anthonyJob.funcs[0]);
  print(anthonyJob.funcs[1]);

  LastEmbed lastofLast = LastEmbed();
  print(lastofLast.combined[0]);
  print(lastofLast.combined[1]);
  print(lastofLast.combined[2]);
  print(lastofLast.combined[3]);
}
