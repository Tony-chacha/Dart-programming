void main() {
  print("This is a recent graduand:");

  myName();

  print("This is how much it cost:");
  int chachaPrice = myPrice();
  print(chachaPrice);

  myCash(100);

  print("This is a parameterized function:");
  int add = mySum(55, 77);
  print(add);

  //function with optional positional parameter
  greet("Anthony Chacha");
  greet("Anthony Chacha", "Engineer");

  //function with option named parameter
  meet(name: "Anthony Chacha Gati");
  meet(profession: "Mechanical Engineer");
  meet(
    name: "Barack Obama",
    profession: "President of the United States of America",
  );
  meet();
}

void myName() {
  // function with no argument and no return type.
  print("Anthony Chacha Gati");
}

int myPrice() {
  // function with no arguments and a return type.
  int price = 0;

  return price;
}

void myCash(int cash) {
  // function with arguments and no return type
  print(cash);
}

int mySum(int firstNumber, int secondNumber) {
  //function with arguments and return type
  return (firstNumber + secondNumber);
}

void greet(String name, [String? title]) {
  if (title != null) {
    print("Hello $title $name!");
  } else {
    print("Hello $name!");
  }
}

void meet({String? name, String? profession}) {
  if (name == null) {
    print("$profession");
  } else {
    print("Hello $name, profession: $profession");
  }
}
