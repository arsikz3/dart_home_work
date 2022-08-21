import 'package:dart_home_work/model.dart';

//mport 'class.dart';

void main() {
  print('Результат задания 2.2');
  final _workTwo = WorkTwo();
  print(_workTwo.binaryFun(34));
  print(_workTwo.decimalFun('100010'));

  print('Результат задания 2.3');
  final _workThree = WorkThree();
  print(_workThree.numsRes());

  print('Результат задания 2.5');
  final _workFive = WorkFive();
  print(_workFive.wordToNumber());

  print('Результат задания 2.7');
  num _workSeven = 729.0;
  print(_workSeven.findNumberRoot(3).toString());
}
