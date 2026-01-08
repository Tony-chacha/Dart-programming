int readNumber(String text) {
  if (text.isEmpty) {
    throw FormatException('Input is empty');
  }
  return int.parse(text);
}

int validateNumber(String text) {
  try {
    int number = readNumber(text);

    if (number < 0) {
      throw Exception('Negative numbers not allowed');
    }
    return number;
  } on FormatException catch (e) {
    print('Teacher: format problem -> $e');
    rethrow;
  } catch (e) {
    print('Teacher: unknown problem -> $e');
    rethrow;
  }
}

void main() {
  try {
    int result = validateNumber("-8");
    print('Final number: $result');
  } on FormatException {
    print('Head Teacher: please enter a valid number');
  } catch (e) {
    print('Head Teacher: system error -> $e');
  }
}
