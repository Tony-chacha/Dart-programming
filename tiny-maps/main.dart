Map<String, int> temperatureStats() {
  return {"minTemp": 25, "maxTemp": 29};
}

Map<String, int> accountInfo() {
  int balance = 8000;
  int lastDeposit = 2000;

  return {"balance": balance, "lastDeposit": lastDeposit};
}

Map<String, int> playerStats() {
  return {"kills": 15, "deaths": 3, "assists": 9};
}

Map<String, int> perimeter(int width, int height) {
  var solution = 2 * (width + height);

  return {"Perimeter solution": solution};
}

class numbers {
  List<int> values = [28, 35, 64, 75, 86, 88, 99, 100];

  Map<String, int> method() {
    var jibu = List.from(values)..sort();

    return {"minimum value": jibu.first, "maximum value": jibu.last};
  }
}

void main() {
  print(temperatureStats());
  print(accountInfo());
  print(playerStats());
  print(perimeter(56, 76));

  numbers digits = numbers();

  var stats = digits.method();

  print(stats);
}
