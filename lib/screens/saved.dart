import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text(
          'Saved Stocks',
          style: TextStyle(
            fontFamily: 'Chakra',
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
       body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        ],
      )
    );
      
  }
}