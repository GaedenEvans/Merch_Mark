// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:merch_mark/screens/home.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool selected = false;
  Icon firstIcon = Icon(
    Icons.favorite_outline,
    color: Colors.black,
  );
  Icon secondIcon = Icon(
    Icons.favorite,
    color: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          IconButton(
            icon: selected
                ? firstIcon
                : secondIcon, //Question asking if selected is true
            onPressed: () {
              print('Selecting Button');
              try {
                // your code that you want this IconButton do
                setState(() {
                  selected =
                      !selected; //Exclamation means reverse current state
                });
              } catch (e) {
                if (kDebugMode) {
                  print(e);
                }
              }
              //  print(selected);
            },
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AAPl',
                      style: TextStyle(
                        fontFamily: 'Chakra',
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '93.57M',
                      style: TextStyle(
                        fontFamily: 'Chakra',
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '147.07',
                      style: TextStyle(
                        fontFamily: 'Chakra',
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.black,
                      size: 60,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '3.01',
                      style: TextStyle(
                        fontFamily: 'Chakra',
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 59,
                  ),
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.black,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const <Widget>[
                    Text(
                      "Ticker\nSymbol",
                      style: TextStyle(fontFamily: 'Chakra'),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Shares\nTraded',
                      style: TextStyle(fontFamily: 'Chakra'),
                    ),
                    SizedBox(
                      width: 31,
                    ),
                    Text(
                      'Share\nPrice',
                      style: TextStyle(fontFamily: 'Chakra'),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      'Change\nDirection',
                      style: TextStyle(fontFamily: 'Chakra'),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Change\nAmount',
                      style: TextStyle(fontFamily: 'Chakra'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                child: Ink.image(
                  image: AssetImage('images/AppleLogo.png'),
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 15),
                  child: Text(
                    'Descricption',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Chakra',
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 8.0),
                  child: Text(
                    'asdfghjkjhgfdsadfghjhgfdsdfgh\njasdfghjhgfdsasdfghjhg\nfdsdfghjhgfdasdfghjkhgfdsdfgh\nasdfghjkhdsdfghjrewsdfgh\nasdfghjkhfsdfghjhfdsdfghj\nwsdfghjasdfghj',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Chakra',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
