// class GameOfLife {

// }
void main() {
  var array = [];
  var singleElementArray = [1];
  var multipleElementArray = [1, 2, 3, 4, 5];
  var fixedLengthArray = List.filled(5, 0);
  var growableArray = [];
  // var anthonyChacha; // this is of type dynamic
  // anthonyChacha = [
  //   10,
  //   20,
  //   30,
  //   40,
  //   50
  // ]; // even though it holds a list its still of type dynamic.
  // Now when I write it like this
  var anthonyChacha = [
    10,
    20,
    30,
    40,
    50
  ]; //Dart looks at the right-hand side and infers the type as List<int>
  // Otherwise I would have to explicityly infer like this List<int> anthonyChacha = [10, 20, 30, 40, 50];
  growableArray.add(100);
  growableArray.add(300);
  growableArray.remove(300); // removing a specific element from the array.
  anthonyChacha.removeAt(2); //removing an element at a specific index.
  anthonyChacha[0] = 700; // updating an element at a specific index.

  print(array);
  print(singleElementArray);
  print(multipleElementArray);
  print(fixedLengthArray);
  print(growableArray);
  print(multipleElementArray.length);
  print(multipleElementArray.first);
  print(multipleElementArray.last);
  print(anthonyChacha);
  print(anthonyChacha[2]);
  print(anthonyChacha[0]);
  print(growableArray);

  // Multi-Dimensional Arrays in Dart
  var matrix = [
    // so here I have created a 3*3 multidimensional array and printed it.
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  print(matrix);

  // Iterating through elements then printing each element.
  for (var i = 0; i < anthonyChacha.length; i++) {
    print(anthonyChacha[i]);
  }

  // Sorting and filtering Arrays in Dart
  anthonyChacha.sort();
  print(anthonyChacha);

  // filtering anthonyChacha to get elements which are greater than 40.
  var filteredChacha = anthonyChacha.where((element) =>
      element >
      40); // so here dart doesn't know its a List<int> because it just sees a dynamic variable being used as a list.
  print(filteredChacha);
}
