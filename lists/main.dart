void main() {
  FixedList Gati = FixedList();

  print("These are in a fixed-length list:");

  for (var list in Gati.ChachaList) {
    print(list);
  }

  // Growable - list;
  GrowableList favoriteMovies = GrowableList();

  print("\nThese are in a growable-list:");

  for (var list2 in favoriteMovies.MovieList) {
    print(list2);
  }

  // Combining lists.
  CombineList listComb = CombineList();

  print("\nCombination of lists in various ways:");
  print("Operator Method: ${listComb.operatorMethod}");
  print("Expand Method: ${listComb.expandMethod}");
  print("Spread Method: ${listComb.spreadMethod}");
  print("from() and addAll() Method: ${listComb.fromAddAllMethod}");

  // Accessing Items in a list in various ways.
  accessItems recipes = accessItems();

  print("\nThis is my List: ${recipes.gatiList}");
  print("Is it Empty?: ${recipes.isEmpty}");
  print("Its not Empty: ${recipes.isNotEmpty}");
  print("How long is it?: ${recipes.length}");
  print("What's here?: ${recipes.access}");
  print("And here?: ${recipes.get}");
  print("What's in between?: ${recipes.range}");
  print("What have you got for me?: ${recipes.take}");
  print("What is the last item on the list?: ${recipes.last}");
}

class FixedList {
  List<String> ChachaList = List.filled(3, '', growable: false);

  FixedList() {
    ChachaList[0] = 'Air-force shoes';
    ChachaList[1] = 'Headphones';
    ChachaList[2] = 'Laptop';
  }
}

class GrowableList {
  // List<String> MovieList = [];

  List<String> MovieList = List.empty(growable: true);

  GrowableList() {
    MovieList.add('BlackList');
    MovieList.add('MoneyHeist');
    MovieList.add('Lupin');
    MovieList.add('Prison Break');
  }
}

class CombineList {
  List<int> List1 = [1, 2, 3];
  List<int> List2 = [4, 5, 6];
  List<int> List3 = [7, 8, 9];

  late List<int> operatorMethod;
  late List<int> expandMethod;
  late List<int> spreadMethod;
  late List<int> fromAddAllMethod;

  CombineList() {
    operatorMethod = List1 + List2 + List3;

    expandMethod = [List1, List2, List3].expand((x) => x).toList();

    spreadMethod = [...List1, ...List2, ...List3];

    fromAddAllMethod = List.from(List1)
      ..addAll(List2)
      ..addAll(List3);
  }
}

class accessItems {
  var gatiList = [1, 2, 'pizza', 'chapati', 5, 6, 'ugali', 'sukuma'];

  var isEmpty;
  var isNotEmpty;
  var length;
  var access;
  var get;
  var range;
  var take;
  var last;

  accessItems() {
    isEmpty = gatiList.isEmpty;
    isNotEmpty = gatiList.isNotEmpty;
    length = gatiList.length;
    access = gatiList.elementAt(2);
    get = gatiList[6];
    range = gatiList.getRange(3, 7).toList();
    take = gatiList.take(4).toList();
    last = gatiList[gatiList.length - 1];
  }
}
