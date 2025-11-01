import 'package:eliuds_eggs/eliuds_eggs.dart';

void main() {
  final eggCounter = EggCounter();

  print('Number: 0 - Eggs; ${eggCounter.count(0)}');
  print('Number: 16 - Eggs; ${eggCounter.count(16)}');
  print('Number: 98 - Eggs; ${eggCounter.count(98)}');
  print('Number: 2000000000 - Eggs; ${eggCounter.count(2000000000)}');
}
