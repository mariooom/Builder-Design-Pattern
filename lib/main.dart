import 'package:flutter/material.dart';
import 'user_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            'Builder Design Pattern',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: BuilderExample(),
        ),
      ),
    );
  }
}

class BuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //using the UserBuilder to create a User object
    final user = UserBuilder("Khaled", "Husseini")
        .setAge(40)
        .setPhone("123-456-7800")
        .build();

    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 20, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: '     User Information\n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            TextSpan(
              text: 'First Name: ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
            ),
            TextSpan(text: '${user.firstName}\n'),
            TextSpan(
              text: 'Last Name: ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
            ),
            TextSpan(text: '${user.lastName}\n'),
            TextSpan(
              text: 'Age: ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
            ),
            TextSpan(text: '${user.age}\n'),
            TextSpan(
              text: 'Phone Number: ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
            ),
            TextSpan(text: '${user.phone}\n'),
          ],
        ),
      ),
    );
  }
}
