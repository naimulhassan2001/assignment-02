class Person {
  final String firstName;
  final String lastName;
  final String address;

  const Person(
      {required this.firstName, required this.lastName, required this.address});

  factory Person.fromjson(Map<String, dynamic> json) {
    var firstName = json['firstName'];
    var lastName = json['lastName'];
    var address = json['address'];

    return Person(firstName: firstName, lastName: lastName, address: address);
  }

  show() {
    print("Name: $firstName $lastName \nAddress: $address\n");
  }
}
