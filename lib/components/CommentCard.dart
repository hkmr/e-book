import 'package:e_book/config/constants.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(kPaddingM),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.grey),
              title: Text('Auther name'),
              subtitle: Text('5 days ago'),
            ),
            Text('Love it!!!\nI have a chance to my knowledge. Thanks'),
          ],
        ),
      ),
    );
  }
}
