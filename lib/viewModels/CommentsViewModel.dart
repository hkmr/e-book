import 'package:e_book/model/Comment.dart';
import 'package:flutter/material.dart';

class CommentsViewModels extends ChangeNotifier {
  final List<Comment> comments = [];

  void dummyComments() {
    comments.add(new Comment(
        authorName: 'Author 1', text: 'lorem ipsum..', time: '5 days ago'));
    comments.add(new Comment(
        authorName: 'Author 1', text: 'lorem ipsum..', time: '5 days ago'));
    comments.add(new Comment(
        authorName: 'Author 1', text: 'lorem ipsum..', time: '5 days ago'));
    comments.add(new Comment(
        authorName: 'Author 1', text: 'lorem ipsum..', time: '5 days ago'));
  }

  List<Comment> getComments() {
    return this.comments;
  }

  void addComment(Comment comment) {
    this.comments.add(comment);
    notifyListeners();
  }
}
