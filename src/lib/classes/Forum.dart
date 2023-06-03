import 'dart:core';
import 'package:try_project/classes/ForumPost.dart';

class Forum {
  List<ForumPost> posts = [];

  Forum();

  void read(ForumPost post) {
    // Perform actions to read the post
    // For example, you can display the post's content
  }

  List<ForumPost> filter(String searchString) {
    //not really search string but filtered list needs change
    // Filter the posts based on the search string
    List<ForumPost> filteredPosts = [];

    for (var post in posts) {
      if (post.title.contains(searchString) ||
          post.content.contains(searchString)) {
        filteredPosts.add(post);
      }
    }

    return filteredPosts;
  }

  void newPost() {
    // Prompt the user for input to create a new post
    // For example, you can use the console to get the post's title and content
  }
}

void main() {
  /*// Creating a forum object
  Forum myForum = Forum();

  // Creating some posts
  myForum.newPost();
  myForum.newPost();

  // Displaying all posts
  for (var post in myForum.posts) {
    myForum.read(post);
  }

  // Filtering posts
  String searchString = // get user input for search string
  List<ForumPost> filteredPosts = myForum.filter(searchString);

  // Displaying filtered posts
  print("Filtered Posts:");
  for (var post in filteredPosts) {
    myForum.read(post);*/
}
