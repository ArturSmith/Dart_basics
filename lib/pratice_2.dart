import 'dart:math';

class Exercise1 {
  // ignore: non_constant_identifier_names
  double Nod(int a, int b) {
    double r = 0;
    int? remainder;

    if (a < b) {
      int swap = a;
      a = b;
      b = swap;
    }

    while (remainder != 0) {
      r = a / b;
      remainder = a % b;
      a = b;
      b = r.toInt();
    }

    return r;
  }

  int Nok(int a, int b) {
    int nok = 1;

    if (a < b) {
      int swap = a;
      a = b;
      b = swap;
    }

    if (a % b == 0) {
      nok = a;
    } else {
      var ListA = Split(a);
      var ListB = Split(b);
      var NewList = ListA;

      for (var B in ListB) {
        if (ListA.contains(B)) {
          ListA.remove(B);
          ListB.remove(B);
        } else {
          NewList.add(B);
        }
      }

      for (var element in NewList) {
        nok = element * nok;
      }
    }
    return nok;
  }

  // ignore: non_constant_identifier_names
  List Split(int a) {
    var ListA = [];
    var ListB = [];
    double reminder;
    int counter = 2;

    if (a >= 2) {
      ListA.add(a);
      while (!ListA.contains(1)) {
        if (a % counter == 0) {
          reminder = a / counter;
          ListA.add(reminder);
          ListB.add(counter);
        } else {
          counter++;
        }
      }
    }

    return ListB;
  }
}

class Exercise2 {
  // ignore: non_constant_identifier_names
  int MakeTwo(int a) {
    var listOfnums = [];
    String num = "";

    if (a == 0) {
      return 0;
    } else if (a == 1) {
      return 1;
    } else {
      do {
        int? reminder;
        reminder = a % 2;
        listOfnums.add(reminder.toString());

        if (a ~/ 2 == 1) {
          listOfnums.add((a ~/ 2).toString());
          a = a ~/ 2;
        } else {
          a = a ~/ 2;
        }
      } while (a != 1);
      var newLiss = listOfnums.reversed;
      for (var element in newLiss) {
        num += element;
      }
      return int.parse(num);
    }
  }

  // ignore: non_constant_identifier_names
  int MakeTen(int a) {
    var stepen = 0;
    String? str;
    var num = 0;

    str = a.toString();
    var list = str.split('').toList().reversed;

    for (var element in list) {
      var newNum = int.parse(element);
      var someNum = newNum * Stepen(2, stepen);
      num = num + someNum;
      stepen++;
    }

    return num;
  }

  // ignore: non_constant_identifier_names
  int Stepen(int a, int stepen) {
    var temprariVar = a;

    if (stepen == 0) {
      return 1;
    } else if (stepen == 1) {
      return a;
    } else {
      for (var i = 0; i < stepen - 1; i++) {
        a *= temprariVar;
      }
      return a;
    }
  }
}

class Exercise3 {
  List MakeNumFromString(String someString) {
    var list = someString.split(" ");

    var newList = [];

    for (var element in list) {
      try {
        newList.add(double.parse(element));
      } catch (e) {}
    }
    return newList;
  }
}

class Exercise4 {
  Map ReturnMap(List list) {
    var map = {};

    for (var element in list) {
      if (map.containsKey(element)) {
        map.forEach((key, value) {
          if (key == element) {
            value++;
          }
        });
      } else {
        map.addAll({element: 1});
      }
    }

    return map;
  }
}

class Exercise5 {
  // ignore: non_constant_identifier_names
  List GetListOfNums(List<String> someList) {
    Map<int, String> map = {
      0: "zero",
      1: "one",
      2: "two",
      3: "three",
      4: "four",
      5: "five",
      6: "six",
      7: "seven",
      8: "eight",
      9: "nine"
    };

    var newList = [];

    for (var elementMap in map.entries) {
      for (var elementList in someList) {
        if (elementList == elementMap.value && !newList.contains(elementList)) {
          newList.add(elementMap.key);
        }
      }
    }
    newList.sort();
    return newList;
  }
}

class Exercise6 {
  static List<double> pointMain = [];

  Exercise6.name(List<double> pointMain);

  var constractor = Exercise6.name([4.0, 3.0, 5.0]);

  double distanceToPoint(List<double> a) {
    var num = sqrt(pow(2, a[0] - pointMain[0]) +
        pow(2, a[1] - pointMain[1]) +
        pow(2, a[2] - pointMain[2]));
    return num;
  }
}

