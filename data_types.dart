void main() {
  //define and initialize with int type
  int number = 2;
  number = 4;
  print("number : $number");

  //double variable
  var doubleNumber = 10.01;
  print("Double Number : $doubleNumber");

  //mutable string variable without write the type
  var name = "Ilham";
  print('Name : $name');

  //mutable dynamic variable example 
  dynamic any = "Ilham Suaib";
  print("Any : $any");
  any = 5;
  print("Any : $any");
  
  //immutable variable, can't be reassign : https://news.dartlang.org/2012/06/const-static-final-oh-my.html
  final int thisIsNumber = 10;
  print("number : $thisIsNumber");

  //boolean varibale
  bool canSwim = true;
  print("Can swim : $canSwim");

  //list
  List<int> numbers = [1, 2, 3];
  numbers.add(4);
  numbers.add(12);
  print("1. ${numbers[0]}");
  print("2. ${numbers[1]}");
  print("4. ${numbers[3]}");
  print("All : ${numbers}");
  numbers.remove(12);
  numbers.removeAt(2);
  print("All : ${numbers}");
}