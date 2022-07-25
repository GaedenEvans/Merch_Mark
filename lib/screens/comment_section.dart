import 'package:flutter/material.dart';
import 'package:merch_mark/services/database.dart';

import '../utils/models/comment.dart';

class CommentSectionPage extends StatefulWidget {
  String ticker;
  CommentSectionPage({required this.ticker});

  @override
  State<CommentSectionPage> createState() => _CommentSectionPageState();
}

class _CommentSectionPageState extends State<CommentSectionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: FutureBuilder(
        future: Database().getCommentsToStock(widget.ticker),
        builder: (context, AsyncSnapshot commentsSnapshot) {
          if (commentsSnapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (commentsSnapshot.hasError) {
            print(commentsSnapshot.error);
            return Center(child: Container());
          }
          List<Comment> comments = commentsSnapshot.data;

          return ListView.builder(
            itemCount: comments.length,
            itemBuilder: (BuildContext context, int index) {
              Comment comment = comments[index];
              return Container(
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 8.0),
                        child: Text(
                          comment.owner,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Chakra',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 8.0),
                        child: Text(
                          comment.title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Chakra',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 8.0),
                        child: Text(
                          comment.text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Chakra',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
