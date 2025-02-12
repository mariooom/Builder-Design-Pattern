import 'user.dart';

class UserBuilder {
  String _firstName;
  String _lastName;
  int? _age;
  String? _phone;

  //set required fields
  UserBuilder(this._firstName, this._lastName);

  //set optional fields
  UserBuilder setAge(int age) {
    _age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    _phone = phone;
    return this;
  }

  //the build method to create the User object
  User build() {
    return User(
      firstName: _firstName,
      lastName: _lastName,
      age: _age,
      phone: _phone,
    );
  }
}