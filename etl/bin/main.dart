// ignore: avoid_relative_lib_imports
import '../lib/etl.dart';

void main() {
  final etl = Etl();

  final legacy = {
    '1': ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    '2': ['D', 'G'],
    '3': ['B', 'C', 'M', 'P'],
    '4': ['F', 'H', 'V', 'W', 'Y'],
    '5': ['K'],
    '8': ['J', 'X'],
    '10': ['Q', 'Z'],
  };

  final result = etl.transform(legacy);

  print(result);
}
