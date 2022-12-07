class Exercise7 {

  int Num = 10;
  
  Exercise7(){
    print(Num.toKvadrat());
  }
  
}

extension Kvadrat on int {
  int toKvadrat() {
    var someNum = this * this;
    return someNum;
  }
}
