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

  print('Результат задания 2.4');

  final _wordCounts = WorkFour();
  print(_wordCounts.result(['cat', 'dog', 'dog', 'fish', 'dog']));

  print('Результат задания 2.5');
  final _workFive = WorkFive();
  print(_workFive.wordToNumberR());

  print('Результат задания 2.7');
  num _workSeven = 729.0;
  print(_workSeven.findNumberRoot(3).toString());

  print('Результат задания 2.8(1)');
  final _user = AdminUser('Arsen', 'arsen@ugtrans.net');
  print(_user.getmailSystem);

  print('Результат задания 2.8(2)');

  User user1 = User('Anton', 'anton.@mail.ru');
  User user2 = User('Romam', 'r.ivanov@gmail.com');
  AdminUser admin1 = AdminUser('Petr', 'p.petroc@microsoft.com');
  AdminUser admin2 = AdminUser('Игорь', 'igor@yahoo.com');
  AdminUser admin3 = AdminUser('Катя', 'k.alex@google.com');
  final user3 = AdminUser('admin', 'arsen@ugtrans.net');

  UserManager userManager = UserManager();

  userManager.addUser(user1);
  userManager.addUser(user2);
  userManager.addUser(admin1);
  userManager.addUser(admin2);
  userManager.addUser(admin3);
  userManager.addUser(user3);
  userManager.removeUser(admin2);
  userManager.getUserList();
}
