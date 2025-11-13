// class GameOfLife {
//   // Put your code here
// }

void main() {
  var matrix = [
    ['A', 'B', 'C'],
    ['D', 'E', 'F'],
    ['G', 'H', 'I']
  ];

  print(matrix[1]);

  int Chairs = 20;

  // so here I have an if statement.
  if (Chairs > 10) {
    print("We have the correct number of chairs");
  }

  // so here I have an if-else statement.
  if (Chairs > 30) {
    print("We have more than 30 chairs");
  } else {
    print("We have less than 30 chairs");
  }

  //
  if (Chairs > 20) {
    print("Chairs are greater than 20");
  } else if (Chairs == 21) {
    print("There are 21 chairs");
  } else if (Chairs == 22) {
    print("There are 22 chairs");
  } else {
    print("I don't know how many chairs are there");
  }

  // what I have below is a nested - if statement.
  var name = "anthonyChacha";

  if (name == "anthonyChacha") {
    if (name.length == 13) {
      print("The name anthonyChacha has 13 letters");
    } else {
      print("I don't know");
    }
  }

  // this is just a basic for loop
  for (var pens = 0; pens < 5; pens++) {
    print('Anthony Chacha pens');
  }

  // just a simple for... in loop
  var maktaba = [10, 20, 30, 40, 50];

  for (int i in maktaba) {
    print(i);
  }

  // for each loop.
  var numbers = [2, 4, 5, 6, 7];
  numbers.forEach((digit) => print(digit + 1));

  var jina = "anthonyChacha";
  jina.split('').forEach((nombre) => print(nombre));

  // while loop
  var brother = 10;
  int x = 1;
  while (x <= brother) {
    print('Hello brother');
    x++;
  }

  // do while loop
  var sister = 5;
  int y = 1;
  do {
    print('I have a sister');
    y++;
  } while (y <= sister);
}
