import 'package:contacts_app/home.dart';
import 'package:contacts_app/signUpForm.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactList(title: 'Contacts App'),
      routes: <String, WidgetBuilder>{
        "/AddNewContact": (BuildContext context) => const ContactForm(
              title: 'Contacts App',
            ),
        //add more routes here
      },
    );
  }
}
