// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:merch_mark/screens/auth/login.dart';
import 'package:merch_mark/screens/auth/signup.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              'Merch Mark',
              style: TextStyle(
                fontFamily: 'Notable',
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 200.0,
              width: 150.0,
              child: Divider(),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'The app that supplys simple information to make trading stocks easy especially for beginners',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Noticia Text',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            SizedBox(
              height: 200.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey.shade400,
                ),
                child: Builder(builder: (context) {
                  return TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => LoginPage()),
                        ),
                      );
                    },
                    child: Text('Login',
                        style: TextStyle(
                          fontFamily: 'Antiqua',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        )),
                  );
                }),
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  //  color: Colors.grey.shade400,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Builder(builder: (context) {
                    return TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignUpPage())));
                      },
                      child: Text('SignUp',
                          style: TextStyle(
                            fontFamily: 'Antiqua',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    );
                  })),
            ]),
          ],
        )),
      ),
    );
  }
}
