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
  List NumsFromStrings(List<String> someList) {
    var newList = [];
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
    Set<String> set = {
      "zero",
      "one",
      "two",
      "three",
      "four",
      "five",
      "six",
      "seven",
      " eight",
      "nine"
    };

    var newSet = set.intersection(someList.toSet());
    for (var element in map.entries) {
      if (newSet.contains(element.value)) {
        newList.add(element.key);
      }
    }

    return newList;
  }
}

class Point {
  List<double> point;
  Point.named(this.point);

  double distanceTo(Point another) {
    double x1 = point[0];
    double y1 = point[1];
    double z1 = point[2];
    double x2 = another.point[0];
    double y2 = another.point[1];
    double z2 = another.point[2];

    double d = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2) + pow(z2 - z1, 2));

    return d;
  }

  double AreaOfTriangle(Point A, Point B, Point C) {
    List<double> pointA = A.point;
    List<double> pointB = B.point;
    List<double> pointC = C.point;

    double AB = sqrt((pow(2, pointA[0] - pointB[0]) +
        pow(2, pointA[1] - pointB[1]) +
        pow(2, pointA[1] - pointB[1])));
    double AC = sqrt((pow(2, pointA[0] - pointC[0]) +
        pow(2, pointA[1] - pointC[1]) +
        pow(2, pointA[1] - pointC[1])));
    double BC = sqrt((pow(2, pointC[0] - pointB[0]) +
        pow(2, pointC[1] - pointB[1]) +
        pow(2, pointC[1] - pointB[1])));

    double semiPerimeter = (AB + AC + BC) / 2;

    double S = sqrt((semiPerimeter - AB) *
        (semiPerimeter - AC) *
        (semiPerimeter - BC) *
        semiPerimeter);

    return S;
  }

  factory Point() {
    var point = Point.named([0, 0, 0]);

    return point;
  }
}
