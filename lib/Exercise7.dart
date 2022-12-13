import 'dart:math';

class Exercise7 {

  double Num = 10;
  
  Exercise7(){
    print(Num.sqrtFun());
  }
  
}

extension Sqrt on double {
  double sqrtFun() {
    return sqrt(this);
  }
}
