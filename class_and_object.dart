
void main() {

  Person person = new Person();
  person.displayName();
  Person p = new Person.giveName("Suaib");
  p.displayName();
  new Person.giveName("Tole").displayName();
  p.name = "Ilham Suaib";
  print("Name : ${p.name}");
}

class Person {
  /** string var with setter and getter
   * in dart if variable start with _, it means the variable is private
   * #cmiiw :D
   **/
  String _name = "Ilham";
  get name => _name;
  set name(String v) => this._name = v;

  //non parameterized
  Person() {

  }
  //named constructor with parameter
  Person.giveName(String name) {
    this._name = name;
  }

  displayName() {
    print("Name : $_name");
  }
}
