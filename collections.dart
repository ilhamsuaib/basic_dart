
/** https://www.tutorialspoint.com/dart_programming/dart_programming_collection.htm
 * dart collections :
 * 1. list (mutable and immutable)
 * 2. set
 * 3. maps
 * 4. Queue
 * */

import 'dart:collection';
 
void main() {

  queueEx();
  listEx();
  setEx();
  mapEx();
}

queueEx() {
  Queue numQ = new Queue(); 
  numQ.addAll([101,202,302, 404]);
  Iterator i= numQ.iterator; 
  
  while(i.moveNext()) {
    print(i.current);
  }
}

listEx() {
  //https://api.dartlang.org/stable/2.4.0/dart-core/List/List.html
  List<String> persons = new List();
  persons.add("Ilham");
  persons.add("Putra");
  persons.add("Putri");
  persons.add("Lala Lele");
  persons.remove("Putra");
  persons.removeAt(2);

  print("\nList :");
  for(String person in persons) {
    print("Persons : $person");
  }
  List<int> numbers = List.unmodifiable([1, 2, 4]);
  print("Numbers : $numbers, size : ${numbers.length}");
}

setEx() {
  Set<int> numbers = new Set();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.remove(1);

  print("\nSet :");
  for(int n in numbers) {
    print(n);
  }
}

mapEx() {
  //we can user '' or "" for string
  Map <String,String> person = {'name':'Ilham','Id':'14118043'}; 
  print('\nPerson : ${person}');
  print('Name : ${person["name"]}');
  print('ID : ${person['Id']}');
}