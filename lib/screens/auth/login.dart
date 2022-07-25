import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:merch_mark/screens/auth/signup.dart';
import 'package:merch_mark/screens/Profile.dart';
import 'package:merch_mark/screens/home.dart';
import 'package:merch_mark/services/auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String inputEmail = '';
  String inputPassword = '';
  String errorMessage = '';
  final Authenication _auth = Authenication();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(10, 93, 10, 0),
            child: const Text(
              'Merch\n Mark',
              style: TextStyle(
                  fontFamily: 'Notable', color: Colors.black, fontSize: 30),
            ),
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        Container(
          width: 360,
          height: 65,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextFormField(
            onChanged: (value) {
              setState(
                () {
                  inputEmail = value;
                },
              );
            },
            validator: (value) {
              if (value == null) {
                return 'Please enter in your Email';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              labelText: 'Email',
              labelStyle: TextStyle(
                fontFamily: 'Bellefair',
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          width: 360,
          height: 65,
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextFormField(
            onChanged: (value) {
              setState(
                () {
                  inputPassword = value;
                },
              );
            },
            validator: (value) {
              if (value == null) {
                return 'Please enter in your Password';
              }
              return null;
            },
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              labelText: 'Password',
              labelStyle: TextStyle(
                fontFamily: 'Bellefair',
                color: Colors.black,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            //forgot password screen
          },
          child: const Text(
            'Forgot Password',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Text(
          errorMessage,
          style: TextStyle(color: Colors.red),
        ),
        InkWell(
          child: Container(
            height: 50,
            width: 360,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.5),
              color: Colors.grey,
            ),
            child: Center(
              child: const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bellefair',
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          onTap: () async {
            if (_formKey.currentState!.validate()) {
              final String? result = await _auth.loginUserWithEmailandPassword(
                  inputEmail, inputPassword);
              if (result != null) {
                setState(() {
                  errorMessage = result;
                });
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              }
            }
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Does not have account?'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SignUpPage()),
                  ),
                );
              },
              child: const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
