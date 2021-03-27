import 'package:e_book/config/constants.dart';
import 'package:flutter/material.dart';

class AddCommentBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(kPaddingM),
      child: Column(
        children: [
          Text('Leave a Comment'),
          TextFormField(),
          ElevatedButton(
            onPressed: null,
            style: ButtonStyle(),
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
