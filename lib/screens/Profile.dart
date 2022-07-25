// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:merch_mark/screens/auth/login.dart';
import 'package:merch_mark/screens/home.dart';
import 'package:merch_mark/screens/saved.dart';
import 'package:merch_mark/services/auth.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Authenication _auth = Authenication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => HomePage()),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/Homepage.jpeg'),
                radius: 80.0,
                backgroundColor: Colors.grey.shade300,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
              child: Text(
                'Transactions',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Chakra',
                    fontSize: 25.0),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 171, 10),
                  child: TextButton(
                    onPressed: () {
                      //purchase page not yet made
                    },
                    child: Text(
                      'Purchase & Sales',
                      style: TextStyle(
                          fontFamily: 'Chakra',
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ),
                ),
                Icon(
                  Icons.attach_money_outlined,
                  color: Colors.black,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
              child: Text(
                'Saves',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Chakra',
                    fontSize: 25.0),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 215, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => SavedPage()),
                        ),
                      );
                    },
                    child: Text(
                      'Saved Items',
                      style: TextStyle(
                          fontFamily: 'Chakra',
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ),
                ),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Text(
                'Account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Chakra',
                    fontSize: 25.0),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 170, 0),
                  child: TextButton(
                    onPressed: () {
                      //account page not made
                    },
                    child: Text(
                      'Account Settings',
                      style: TextStyle(
                          fontFamily: 'Chakra',
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ),
                ),
                Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Text(
                'Help',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Chakra',
                    fontSize: 25.0),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 220, 0),
                  child: TextButton(
                    onPressed: () {
                      //Help page not made
                    },
                    child: Text(
                      'Help Center',
                      style: TextStyle(
                          fontFamily: 'Chakra',
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ),
                ),
                Icon(
                  Icons.question_mark,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 170, 10),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => LoginPage()),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Out',
                      style: TextStyle(
                          fontFamily: 'Chakra',
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
