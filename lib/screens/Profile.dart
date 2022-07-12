// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:merch_mark/screens/home.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                context, MaterialPageRoute(builder: ((context) => HomePage())));
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
                  backgroundImage:AssetImage('images/Homepage.jpeg'),
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
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                child: Text(
                  'Purchases & Sales',
                  style: TextStyle(fontFamily: 'Chakra', fontSize: 20.0),
                ),
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
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                child: Text(
                  'Saved Items',
                  style: TextStyle(fontFamily: 'Chakra', fontSize: 20.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                child: Text(
                  'Account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Chakra',
                      fontSize: 25.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                child: Text(
                  'Account Settings',
                  style: TextStyle(fontFamily: 'Chakra', fontSize: 20.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                child: Text(
                  'Help',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Chakra',
                      fontSize: 25.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                child: Text(
                  'Help Center',
                  style: TextStyle(fontFamily: 'Chakra', fontSize: 20.0),
                ),
              ),
            ]),
      ),
    );
  }
}
