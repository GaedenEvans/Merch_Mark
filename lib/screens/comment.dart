import 'package:flutter/material.dart';
import 'package:merch_mark/services/database.dart';

class AddCommentScrn extends StatefulWidget {
  String ticker;
  AddCommentScrn({required this.ticker});

  @override
  State<AddCommentScrn> createState() => _AddCommentScrnState();
}

class _AddCommentScrnState extends State<AddCommentScrn> {
  final _formKey = GlobalKey<FormState>();
  String inputTitle = '';
  String inputComment = '';
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Comment Section',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Chakra',
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.grey,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                    ),
                    onChanged: (value) {
                      setState(
                        () {
                          inputTitle = value;
                        },
                      );
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'Please enter in a Title';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Add Comment',
                    ),
                    maxLines: 10,
                    onChanged: (value) {
                      setState(
                        () {
                          inputComment = value;
                        },
                      );
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'Please enter in a comment';
                      }
                      return null;
                    },
                  ),
                  TextButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pop(context);
                        Database().postCommentToStock(
                            inputComment, inputTitle, widget.ticker);
                      }
                      ;
                    },
                    child: Text(
                      'Post',
                      style: TextStyle(
                        fontFamily: 'Chakra',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
