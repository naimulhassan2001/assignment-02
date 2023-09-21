import 'dart:convert';
import 'dart:io';
import 'package:readjson/person.dart';

void main(List<String> arguments) {
  final fileName = 'assets/persons.json';

  var myFile = File(fileName);

  List<Person> persons = [];

  myFile.readAsString().then((value) {
    var date = jsonDecode(value);

    for (var item in date) {
      var person = Person.fromjson(item);
      persons.add(person);

    }

    persons.forEach((person) {
      person.show();
    });
  });
}

