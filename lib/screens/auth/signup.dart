import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:merch_mark/screens/home.dart';
import 'package:merch_mark/services/auth.dart';
import 'login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
  String inputName = '';
  String inputPassword = '';
  String errorMessage = '';
  final Authenication _auth = Authenication();
  final _formKey = GlobalKey<FormState>(); //class to create a key to get rid of text editing controller

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
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
                    inputName = value;
                  },
                );
              },
              validator: (value) {
                if (value == null) {
                  return 'Please enter in your name';
                }
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                labelText: 'Create Username',
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
                    inputEmail = value;
                  },
                );
              },
              validator: (value) {
                if (value == null) {
                  return 'Please enter in your email';
                }
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
                print(value);
                setState(
                  () {
                    inputPassword = value;
                  },
                );
              },
              validator: (value) {
                if (value == null) {
                  return 'Please enter in your password';
                }
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
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
              height: 50,
              width: 345,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.5),
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  'Create Account',
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
              if (_formKey.currentState!.validate()) {//ensures if there is text if not returns error message 
                final String? result =
                    await _auth.createUserWithEmailandPassword(
                        inputEmail, inputPassword, inputName);
                if (result != null) { //Checks if value is null if it is means user successfully made an account without error 
                  setState(() {
                    errorMessage = result;
                  });
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
