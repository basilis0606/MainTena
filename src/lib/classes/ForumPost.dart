import 'package:try_project/classes/Post.dart';

class ForumPost extends Post {
  int likes = 0;
  int dislikes = 0;

  ForumPost(String title, String text) : super(title, text);

  void like() {
    likes++;
  }

  void unlike() {
    likes--;
  }

  void dislike() {
    dislikes++;
  }

  void undislike() {
    dislikes--;
  }
}
