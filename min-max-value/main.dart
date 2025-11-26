import 'dart:math';

void main() {
  var chachaList = [121, 12, 33, 15, 4];

  var largestChachaValue = chachaList[0];
  var smallestChachaValue = chachaList[0];

  for (var i = 0; i < chachaList.length; i++) {
    if (chachaList[i] > largestChachaValue) {
      largestChachaValue = chachaList[i];
    }

    if (chachaList[i] < smallestChachaValue) {
      smallestChachaValue = chachaList[i];
    }
  }

  print("Smallest value in the list : $smallestChachaValue");
  print("Largest value in the list : $largestChachaValue");

  List<int> chachaList1 = [10, 29, 35, 62, 1, 53, 56];

  var largestChacha1Value = chachaList1[0];
  var smallestChacha1Value = chachaList1[0];

  for (var i = 0; i < chachaList.length; i++) {
    if (chachaList[i] > largestChacha1Value) {
      largestChacha1Value = chachaList1[i];
    }

    if (chachaList[i] < smallestChacha1Value) {
      smallestChacha1Value = chachaList1[i];
    }
  }
  print(
    "This value $largestChacha1Value is the largest value in Chacha's list",
  );
  print(
    "This value $smallestChacha1Value is the smallest value in Chacha's list",
  );

  List<int> TonyList = [38, 92, 53, 64, 11, 20];

  TonyList.sort();

  print("This value ${TonyList.first} is the smallest in Tony's list");
  print("This value ${TonyList.last} is the largest in Tony's list");

  var GatiList = [38, 99, 29, 45, 66, 22, 65];

  var largestGatiListValue = GatiList[0];
  var smallestGatiListValue = GatiList[0];

  GatiList.forEach((i) {
    if (i > largestGatiListValue) {
      largestGatiListValue = i;
    }

    if (i < smallestGatiListValue) {
      smallestGatiListValue = i;
    }
  });
  print("Smallest value: $smallestGatiListValue");
  print("Largest value: $largestGatiListValue");

  var AnthonyList = [38, 22, 11, 5, 43, 23, 66, 89];

  var smallestAnthonyValue = AnthonyList.reduce(
    (current, next) => current < next ? current : next,
  );

  var largestAnthonyValue = AnthonyList.reduce(
    (current, next) => current > next ? current : next,
  );

  print("Smallest: $smallestAnthonyValue");
  print("Largest: $largestAnthonyValue");

  var chachaList2 = [22, 43, 54, 65, 78, 99, 22];

  var smallestChacha2Value = chachaList2.reduce(min);
  var largestChacha2Value = chachaList2.reduce(max);

  print("Smallest: $smallestChacha2Value");
  print("Largest: $largestChacha2Value");

  var gatiList = [29, 44, 33, 23, 11, 6, 77, 43, 23];

  var smallestGatiValue = gatiList.fold(
    gatiList[0],
    (current, next) => current < next ? current : next,
  );

  var largestGatiValue = gatiList.fold(
    gatiList[0],
    (current, next) => current > next ? current : next,
  );

  print("Smallest: $smallestGatiValue");
  print("Largest: $largestGatiValue");

  var newList = [29, 33, 43, 55, 23, 53, 67, 88, 86, 45];

  var smallestNewList = newList.fold(newList[0], min);
  var largestNewList = newList.fold(newList[0], max);

  print("Smallest: $smallestNewList");
  print("Largest: $largestNewList");
}
