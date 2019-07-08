void main() {
  Cat c = new Cat();
  c.printCat();
  Cat cat = new Cat.myCat("Kikik", 5, false);
  cat.printCat();
  print("Cat name : ${cat.name}");
  cat.overridingEx("Test overriding of ${Animal.TAG}");

  //cascade operator (..) we can create instance and calling member of class like this
  new Cat.myCat("Snowy", 3, true)
  ..printCat()
  ..overridingEx("Test cascade operator");
}

class Animal {

  static const String TAG = "Animal";

  String _name;
  get name => _name;
  set name(String v) => this._name = v;
  int _age;
  get age => _age;
  set age(int v) => this._age = v;

  overridingEx(String a) {
    print("overridingEx a : $a");
  }
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
    print("\nCat :");
    print("Name : $name");
    print("Age : $age year(s)");
    print("Is cute? : ${_isCute ? "Yes" : "No"}");
  }

  @override
  overridingEx(String b) {
    print("overridingEx b : $b");
    super.overridingEx("Calling func from parent");
  }
}