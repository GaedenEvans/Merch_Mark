// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:merch_mark/screens/Profile.dart';
import 'package:merch_mark/screens/comment.dart';
import 'package:merch_mark/screens/comment_section.dart';
import 'package:merch_mark/screens/product.dart';
import 'package:merch_mark/screens/saved.dart';
import 'package:merch_mark/services/database.dart';

import '../services/stock_data.dart';
import '../utils/models/stock.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Colors.black, //change your color here
//         ),
//         backgroundColor: Colors.grey,
//         elevation: 0,
//         title: Text(
//           'Hi, Username',
//           style: TextStyle(
//             fontFamily: 'Chakra',
//             fontSize: 25,
//             color: Colors.black,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         children: <Widget>[
//           Column(
//             children: [
//               Column(
//                 children: [
//                   const Padding(
//                     padding: const EdgeInsets.fromLTRB(50, 10, 10, 10),
//                     child: const Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         'Featured Stocks',
//                         style: TextStyle(
//                           fontFamily: 'Chakra',
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Container(
//                         width: 390,
//                         height: 100,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: [
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) => ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage(
//                                         'images/GladstoneInvestment.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage('images/Tesla.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage('images/Pepsi.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage(
//                                         'images/Microsoft.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image:
//                                         const AssetImage('images/Samsung.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage(
//                                         'images/Starbucks.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.fromLTRB(50, 10, 10, 10),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         'Recommended Stocks',
//                         style: TextStyle(
//                           fontFamily: 'Chakra',
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Container(
//                         width: 390,
//                         height: 100,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: [
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image:
//                                         const AssetImage('images/Amazon.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage(
//                                         'images/Coco-Cola.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage('images/ICBC.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage(
//                                         'images/Microsoft.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage(
//                                         'images/Mcdonalds.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage('images/Nike.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Padding(
//                     padding: const EdgeInsets.fromLTRB(50, 10, 10, 10),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         'Technology Stocks',
//                         style: const TextStyle(
//                           fontFamily: 'Chakra',
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Container(
//                         width: 390,
//                         height: 100,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: [
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage(
//                                         'images/Microsoft.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage(
//                                         'images/AppleLogo.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image: const AssetImage('images/Sony.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image:
//                                         const AssetImage('images/Google.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image:
//                                         const AssetImage('images/Facebook.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Material(
//                                 elevation: 8,
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: InkWell(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: ((context) =>
//                                             const ProductPage()),
//                                       ),
//                                     );
//                                   },
//                                   child: Ink.image(
//                                     image:
//                                         const AssetImage('images/Youtube.png'),
//                                     width: 200,
//                                     height: 200,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//       backgroundColor: Colors.white,
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.grey,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             IconButton(
//                 color: Colors.black,
//                 icon: const Icon(Icons.home),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: ((context) => const HomePage()),
//                     ),
//                   );
//                 }),
//             IconButton(
//               color: Colors.black,
//               icon: const Icon(Icons.favorite),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: ((context) => const SavedPage()),
//                   ),
//                 );
//               },
//             ),
//             IconButton(
//               color: Colors.black,
//               icon: const Icon(Icons.person),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: ((context) => ProfilePage()),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../utils/models/stock.dart';

// class HomePage extends StatefulWidget {
//   String ticker;
//   HomePage({required String this.ticker});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class StockScrn extends StatefulWidget {
  String ticker;
  StockScrn({required this.ticker});
  @override
  State<StockScrn> createState() => _StockScrnState();
}

class _StockScrnState extends State<StockScrn> {
  bool selected = true;
  Icon firstIcon = Icon(
    Icons.favorite_outline,
    color: Colors.black,
  );
  Icon secondIcon = Icon(
    Icons.favorite,
    color: Colors.red,
  );
  final _formKey = GlobalKey<FormState>();
  String inputTitle = '';
  String inputComment = '';
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Stock?>(
        future: StockAPI().fetchStock(widget.ticker),
        builder: (context, AsyncSnapshot stockSnapshot) {
          if (stockSnapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (stockSnapshot.hasError) {
            print(stockSnapshot.error);
            return Center(child: Container());
          }
          if (!stockSnapshot.hasData) {
            return Center(child: Container());
          }
          Stock stock = stockSnapshot.data;
          return Scaffold(
            appBar: AppBar(
              title: Text(
                stock.ticker,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Chakra',
                  fontWeight: FontWeight.w500,
                ),
              ),
              backgroundColor: Colors.grey,
              iconTheme: IconThemeData(
                color: Colors.black, //change your color here
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
                      setState(
                        () {
                          selected =
                              !selected; //Exclamation means reverse current state
                        },
                      );
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
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Center(
                          child: Text(
                            stock.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Chakra',
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),
                            // Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      Text(
                        stock.exchange,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Chakra',
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'Market Status: ' + stock.isMarketOpen.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Chakra',
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'Opening Price: ' + stock.openingPrice.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Chakra',
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 15),
                          child: Text(
                            'Commments',
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
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => AddCommentScrn(
                                    ticker: stock.ticker,
                                  )),
                            ),
                          );
                        },
                        child: Text(
                          'Add Comment',
                        ),
                      ),
                      CommentSectionPage(ticker: stock.ticker),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}

class HomePage extends StatefulWidget {
  //Stocks UI
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future _future = StockAPI().fetchStocks('NASDAQ');
  PageController _pageController =
      PageController(viewportFraction: 0.8, initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text(
          'Merch Mark',
          style: TextStyle(
            fontFamily: 'Chakra',
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 10, 10),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'NASDAQ',
                  style: TextStyle(
                    fontFamily: 'Chakra',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                child: FutureBuilder(
                    future: _future,
                    builder: (context, AsyncSnapshot stocks) {
                      if (stocks.connectionState != ConnectionState.done) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (stocks.hasError) {
                        print(stocks.error);
                        return Center(child: Container());
                      }
                      if (!stocks.hasData) {
                        return Center(child: Container());
                      }
                      return PageView.builder(
                          controller: _pageController,
                          itemCount: stocks.data.length,
                          itemBuilder: (context, i) {
                            Stock stock = stocks.data[i];
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => StockScrn(
                                                ticker: stock.ticker,
                                              )),
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(stock.name),
                                    leading: Text(stock.ticker),
                                    subtitle: Text(stock.exchange),
                                  ),
                                ),
                              ),
                            );
                          });
                      // return PageView.builder(itemBuilder: (context, index) {});
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 10, 10),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'NYSE',
                  style: TextStyle(
                    fontFamily: 'Chakra',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                child: FutureBuilder(
                    future: StockAPI().fetchStocks('NYSE'),
                    builder: (context, AsyncSnapshot stocks) {
                      if (stocks.connectionState != ConnectionState.done) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (stocks.hasError) {
                        print(stocks.error);
                        return Center(child: Container());
                      }
                      if (!stocks.hasData) {
                        return Center(child: Container());
                      }
                      return PageView.builder(
                          controller: _pageController,
                          itemCount: stocks.data.length,
                          itemBuilder: (context, i) {
                            Stock stock = stocks.data[i];
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StockScrn(
                                          ticker: stock.ticker,
                                        ),
                                      ),
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(stock.name),
                                    leading: Text(stock.ticker),
                                    subtitle: Text(stock.exchange),
                                  ),
                                ),
                              ),
                            );
                          });
                      // return PageView.builder(itemBuilder: (context, index) {});
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 10, 10),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'ASE',
                  style: TextStyle(
                    fontFamily: 'Chakra',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                child: FutureBuilder(
                    future: StockAPI().fetchStocks('ASE'),
                    builder: (context, AsyncSnapshot stocks) {
                      if (stocks.connectionState != ConnectionState.done) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (stocks.hasError) {
                        print(stocks.error);
                        return Center(child: Container());
                      }
                      if (!stocks.hasData) {
                        return Center(child: Container());
                      }
                      return PageView.builder(
                          controller: _pageController,
                          itemCount: stocks.data.length,
                          itemBuilder: (context, i) {
                            Stock stock = stocks.data[i];
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StockScrn(
                                          ticker: stock.ticker,
                                        ),
                                      ),
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(stock.name),
                                    leading: Text(stock.ticker),
                                    subtitle: Text(stock.exchange),
                                  ),
                                ),
                              ),
                            );
                          });
                      // return PageView.builder(itemBuilder: (context, index) {});
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 10, 10),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'OTC',
                  style: TextStyle(
                    fontFamily: 'Chakra',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                child: FutureBuilder(
                    future: StockAPI().fetchStocks('OTC'),
                    builder: (context, AsyncSnapshot stocks) {
                      if (stocks.connectionState != ConnectionState.done) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (stocks.hasError) {
                        print(stocks.error);
                        return Center(child: Container());
                      }
                      if (!stocks.hasData) {
                        return Center(child: Container());
                      }
                      return PageView.builder(
                          controller: _pageController,
                          itemCount: stocks.data.length,
                          itemBuilder: (context, i) {
                            Stock stock = stocks.data[i];
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => StockScrn(
                                          ticker: stock.ticker,
                                        ),
                                      ),
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(stock.name),
                                    leading: Text(stock.ticker),
                                    subtitle: Text(stock.exchange),
                                  ),
                                ),
                              ),
                            );
                          });
                      // return PageView.builder(itemBuilder: (context, index) {});
                    }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                color: Colors.black,
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HomePage()),
                    ),
                  );
                }),
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SavedPage()),
                  ),
                );
              },
            ),
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => ProfilePage()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
