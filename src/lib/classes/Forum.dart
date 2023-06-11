import 'dart:core';
import 'ForumPost.dart';

class Forum {
  List<ForumPost> posts = [];

  Forum();

  void read(ForumPost post) {
    // Perform actions to read the post
    // For example, you can display the post's content

    throw UnimplementedError();
  }

  List<ForumPost> filter(String searchString) {
    //not really search string but filtered list needs change
    // Filter the posts based on the search string
    List<ForumPost> filteredPosts = [];

    for (var post in posts) {
      if (post.title.contains(searchString) ||
          post.text.contains(searchString)) {
        filteredPosts.add(post);
      }
    }

    return filteredPosts;
  }

  void newPost(String title, String text) {
    // Create a new post object
    ForumPost newPost = ForumPost(title, text);

    // Add the post to the list of posts
    posts.add(newPost);
  }
}
