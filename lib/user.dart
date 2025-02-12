
class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  //public constructor
  User({
    required this.firstName,
    required this.lastName,
    this.age,
    this.phone,
  });
}