import 'package:flutter/material.dart';
import 'package:merch_mark/screens/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          backgroundColor: Colors.blue.shade800,
          title: Text('Hi, Username'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          )),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Featured Stocks',
                        style: TextStyle(
                          fontFamily: 'Chakra',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 390,
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage('images/Microsoft.png'),
                              ),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage('images/AppleLogo.png'),
                              ),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage('images/Sony.png'),
                              ),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage('images/Microsoft.png'),
                              ),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage('images/AppleLogo.png'),
                              ),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage('images/Sony.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                color: Colors.white,
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HomePage())));
                }),
            IconButton(
                color: Colors.white,
                icon: Icon(Icons.favorite),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => ProfilePage())));
                }),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => ProfilePage())));
              },
            ),
          ],
        ),
      ),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
