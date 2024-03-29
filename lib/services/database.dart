import 'dart:convert';
import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merch_mark/services/auth.dart';
import 'package:merch_mark/utils/models/comment.dart';
import 'package:merch_mark/utils/models/stock.dart';
import 'package:uuid/uuid.dart';

class Database {
  DatabaseReference connection =
      FirebaseDatabase.instance.ref(); //returns an instance of database

  Future postCommentToStock(String text, String title, String ticker) async {
    String uid = Uuid().v4();
    String? owner = Authenication().currentUser!.displayName;
    DatabaseReference commentsRef = connection.child('comments').child(uid);
    await commentsRef.set({
      'uid': uid,
      'owner': owner,
      'ticker': ticker,
      'title': title,
      'text': text
    });
  }

  Future<List<Comment>?> getCommentsToStock(
    String ticker,
  ) async {
    Query commentsRef = connection
        .child('comments')
        .orderByChild('/ticker')
        .equalTo(
            ticker); //Going to child nodes and order them all by the ticker just used
    final event = await commentsRef.once(DatabaseEventType
        .value); //Get event = query search once values found set valuse to be event data
    List<Comment> comments = [];
    Map data = event.snapshot.value as Map; //Going to map through comments
    if (event.snapshot.value == null) {
      return null;
    }
    data.forEach(
      (key, value) {
        comments.add(
          Comment.fromJson(value),
        );
      },
    );
    return comments;
  }

  likeStock(String ticker, String name, String exchange) async {
    print('hello');
    String uid = Uuid().v4();
    String? owner = Authenication().currentUser!.uid;
    DatabaseReference likeStocksRef =
        connection.child('likes').child(owner).child(uid);
    await likeStocksRef.update(
      {
        'owner': owner,
        'symbol': ticker,
        'exchange': exchange,
        'name': name,
      },
    );
  }

  getLikeStock() async {
    List<Stock> stocksList = [];
    DatabaseReference getLikeStockRef =
        connection.child('likes').child(Authenication().currentUser!.uid);
    print('Made');
    final event = await getLikeStockRef.once(DatabaseEventType.value);
    final Map queryData = event.snapshot.value as Map;
    queryData.forEach(
      (k, v) {
        print(k);
        stocksList.add(Stock.fromJson(v));
      },
    );
    print(stocksList);
    return stocksList;
  }
}
