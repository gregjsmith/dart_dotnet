library model;

import 'dart:json';

class Person{
  
  Person.fromPascalCaseJson(String json){
    var map = parse(json)['Person'];
    firstname = map['FirstName'];
    surname = map['Surname'];
    age = map['Age'];
  }
  

  String firstname;
  String surname;
  num age;
}
