import 'package:try_project/classes/Comment.dart';
import 'dart:core';

class Post {
  String title;
  String text;
  final date = DateTime.now();
  List<Comment> comments = [];

  Post(this.title, this.text);

  void addComment(String comment) {
    // Create a new comment object
    Comment newComment = Comment(comment);

    // Add the comment to the list of comments
    comments.add(newComment);
  }

  void editPost(String newTitle, String newText) {
    // Update the title and text of the post
    title = newTitle;
    text = newText;
  }
}

void main() {}
