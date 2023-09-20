class Person {
  final String firstName;
  final String lastName;
  final String address;

  const Person(
      {required this.firstName, required this.lastName, required this.address});

  show() {
    print("Name: $firstName $lastName \nAddress: $address\n");
  }
}
