import 'package:e_book/config/constants.dart';
import 'package:e_book/model/Comment.dart';
import 'package:e_book/viewModels/CommentsViewModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AddCommentBox extends StatelessWidget {
  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(kPaddingM),
      margin: EdgeInsets.symmetric(horizontal: kSpacingM),
      child: Column(
        children: [
          Text(
            'Leave a Comment',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: kSpacingM),
          TextFormField(
            controller: commentController,
            minLines: 3,
            maxLines: 4,
            decoration: InputDecoration(
              fillColor: Colors.grey[200],
              hintText: 'Write here...',
              contentPadding: EdgeInsets.all(kPaddingM),
              border: InputBorder.none,
              filled: true,
            ),
          ),
          SizedBox(height: kSpacingM),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
              padding: EdgeInsets.symmetric(
                  horizontal: kPaddingL, vertical: kPaddingM),
              textStyle: TextStyle(fontSize: 16.0),
            ),
            child: Text('Submit'),
            onPressed: () {
              Provider.of<CommentsViewModels>(context, listen: false)
                  .addComment(new Comment(
                authorName: 'Author Name',
                text: commentController.text,
                time: DateFormat('hh:mm').format(DateTime.now()).toString(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
