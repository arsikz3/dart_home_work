import 'dart:ffi';
import 'dart:math';
import 'dart:developer' as de;

typedef StringList = List<String>;

class WorkOne {
  int num1;
  int num2;

  WorkOne(
    this.num1,
    this.num2,
  );

  int nokFunct() {
    int nok;
    nok = num1 * num2 ~/ nodFunct();

    return nok;
  }

  int nodFunct() {
    var nums1 = <int>{};
    var nums2 = <int>{};
    int nod = 0;

    for (int i = 1; i <= num1; i++) {
      if (num1 % i == 0) {
        nums1.add(i);
      }
    }

    for (int j = 1; j <= num2; j++) {
      if (num2 % j == 0) {
        nums2.add(j);
      }
    }

    for (int i = 0; i < nums1.length; i++) {
      for (int j = 0; j < nums2.length; j++) {
        if (nums1.elementAt(i) == nums2.elementAt(j)) {
          nod = nums1.elementAt(i);
        }
      }
    }
    return nod;
  }
}

class WorkTwo {
  String binaryFun(int prmNumber) {
    int reminder = 0;
    String binNum = '';

    while (prmNumber != 0) {
      reminder = prmNumber % 2;
      binNum += reminder.toString();
      prmNumber = prmNumber ~/ 2;
    }
    return binNum.split('').reversed.join('');
  }

  int decimalFun(String _binarynum) {
    int sum = 0;
    int x;
    for (int i = 0; i < _binarynum.length; i++) {
      x = int.parse(_binarynum[_binarynum.length - i - 1]);
      sum += (x * pow(2, i)) as int;
    }

    return sum;
  }
}

class WorkThree {
  String textForWork =
      "Это сло один1, этотслово 2, еще есть другие слова 3456789 и ноль 0";
  List<String> numbers = [];
  StringList numList = [];

  List<String> numsRes() {
    for (int i = 0; i < textForWork.length; i++) {
      if (textForWork[i].contains(RegExp(r'[0-9]'))) {
        numList.add(textForWork[i]);
      }
    }

    return numList;
  }
}

class WorkFour {
  Map<String, int> wordCounts = <String, int>{};

  Map<String, int> result(StringList wordList) {
    for (int i = 0; i < wordList.length; i++) {
      if (wordCounts.containsKey(wordList[i])) {
        var _curval = wordCounts[wordList[i]];
        wordCounts[wordList[i]] = _curval != null ? _curval.toInt() + 1 : 1;
      } else {
        final _elem = <String, int>{wordList[i]: 1};
        wordCounts.addAll(_elem);
      }
    }
    return wordCounts;
  }
}

class WorkFive {
  List<String> words = ['one', 'two', 'three', 'cat', 'dog', 'home'];
  List<int> numss = [];
  late Map<String, int> countWord;

  Map<String, int> numbers = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9,
  };

  List<int> wordToNumberR() {
    for (var key in words) {
      if (numbers.containsKey(key) && (numbers[key] != null)) {
        int? _elem = numbers[key];
        numss.add(_elem!);
      }
    }

    return numss;
  }
}

class Point /*WorkSix*/ {
  double x, y, z;

  Point(this.x, this.y, this.z);

  void initialize() {
    x = 0;
    y = 0;
    z = 0;
  }

  double distanceTo(Point another) {
    return sqrt(
        pow(another.x - x, 2) + pow(another.y - y, 2) + pow(another.z - z, 2));
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.one() {
    return Point(1, 1, 2);
  }

  double getArround(Point pointOne, Point pointTwo, Point pointThree) {
    double pperim = pointOne.pp(pointTwo, pointThree);
    return sqrt(pperim *
        (pperim - pointOne.distanceTo(pointThree)) *
        (pperim - pointOne.distanceTo(pointTwo)) *
        (pperim - pointThree.distanceTo(pointTwo)));
  }

  double pp(Point twoPoint, Point threePoint) {
    double lineOne = distanceTo(twoPoint);
    double lineTwo = distanceTo(threePoint);
    double lineThree = twoPoint.distanceTo(threePoint);
    return (lineOne + lineTwo + lineThree) / 2;
  }
}

extension WorkSeven on num {
  num findNumberRoot(_root) {
    double x, pw;
    double xprev = 1;
    double _number = toDouble();
    x = _number;
    while ((xprev - x).abs() > 1.0e-10) {
      xprev = x;
      pw = 1;
      for (int i = 0; i < (_root - 1); i++) {
        pw *= xprev;
      }
      x = 1.0 / _root * ((_root - 1) * xprev + _number / pw);
    }
    return x;
  }
}

class User {
  String name;
  String email;

  User(this.name, this.email);
}

mixin GetMailSystem on User {
  //User user = User('admin@mail.ru');
  String domen = 'не найден';
  String get getmailSystem {
    domen = email.split('@')[1];
    return domen;
  }
}

class AdminUser extends User with GetMailSystem {
  AdminUser(String name, String email) : super(name, email);
}

class UserManager<T extends User> {
  List<T> personsEmails = [];

  List<String> sortedUsersEmails = [];

  //String email;

  void addUser(T user) => personsEmails.add(user);

  void removeUser(T user) => personsEmails.remove(user);
  void getUserList() {
    for (var e in personsEmails) {
      if (e.name == 'admin') {
        print((e as AdminUser).getmailSystem);
      } else {
        print(e.email);
      }
    }
  }
}
