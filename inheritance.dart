void main() {
  Cat c = new Cat();
  c.printCat();
  Cat cat = new Cat.myCat("Kikik", 5, false);
  cat.printCat();
  print("Cat name : ${cat.name}");
}

class Animal {
  String _name;
  get name => _name;
  set name(String v) => this._name = v;
  int _age;
  get age => _age;
  set age(int v) => this._age = v;
}

class Cat extends Animal {
  bool _isCute = false;

  Cat() {}
  Cat.myCat(String name, int age, bool isCute) {
    this.name = name;
    this.age = age;
    this._isCute = isCute;
  }

  printCat() {
    print("Cat :");
    print("Name : $name");
    print("Age : $age year(s)");
    print("Is cute? : ${_isCute ? "Yes" : "No"} \n");
  }
}