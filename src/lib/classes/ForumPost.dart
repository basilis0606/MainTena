import 'package:try_project/classes/Post.dart';

class ForumPost extends Post {
  int likes = 0;
  int dislikes = 0;

  ForumPost(String title, String text) : super(title, text);

  void like() {
    likes++;
  }

  void dislike() {
    dislikes++;
  }
}
/*
void main() {
  ForumPost myPost = ForumPost("My Title", "My Content");
  myPost.like();
  myPost.dislike();

  print("Likes: ${myPost.likes}");       // Output: Likes: 1
  print("Dislikes: ${myPost.dislikes}"); // Output: Dislikes: 1
}*/
