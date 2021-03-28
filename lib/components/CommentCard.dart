import 'package:e_book/config/constants.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String author;
  final String text;
  final String time;

  CommentCard(
      {@required this.author, @required this.text, @required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(kPaddingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(backgroundColor: Colors.grey),
              title: Text(this.author),
              subtitle: Text(this.time),
            ),
            SizedBox(height: kSpacingM),
            Text(
              this.text,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
