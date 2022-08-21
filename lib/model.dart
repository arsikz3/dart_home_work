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

class WorkFive {
  List<String> words = ['one', 'two', 'three', 'cat', 'dog', 'home'];
  List<int> numss = [];

  Map<int, String> numbers = {
    0: 'zero',
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
    5: 'five',
    6: 'six',
    7: 'seven',
    8: 'eight',
    9: 'nine',
  };

  List<int> wordToNumber() {
    numbers.forEach((key, value) {
      if (words.contains(value)) {
        numss.add(key);
      }
    });

    return numss;
  }
}

/*
extension  on num {
  num sqrtmy(int number) {
    double t;
    double squareRoot = number / 2;
    do {
      t = squareRoot;
      squareRoot = (t + (number / t)) / 2;
    } while ((t - squareRoot) != 0);
    return squareRoot;
  }
}
*/
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
