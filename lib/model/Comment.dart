import 'package:flutter/material.dart';

class Comment {
  final String authorName;
  final String text;
  final String time;

  Comment({
    @required this.authorName,
    @required this.text,
    @required this.time,
  });
}
