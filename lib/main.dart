import 'package:flutter/material.dart';
import 'package:merch_mark/screens/auth/login.dart';
import 'package:merch_mark/screens/auth/signup.dart';
import 'package:merch_mark/screens/Profile.dart';
import 'package:merch_mark/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/Welcome': (context) => WelcomePage(),
          '/Login': (context) => LoginPage(),
          '/Signup': (context) => SignUpPage(),
          '/Home': (context) => ProfilePage(),
        },
        home: WelcomePage());
  }
}
