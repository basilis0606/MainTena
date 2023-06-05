import 'Review.dart';
import 'Post.dart';
import 'Comment.dart';

class Activity {
  List<Review> reviews = [];
  List<Comment> comments = [];
  List<Post> posts = [];

  Activity();

  void getRecentActivity() {
    throw UnimplementedError();
  }

  void getRecentPosts() {
    throw UnimplementedError();
  }

  void getRecentComments() {
    throw UnimplementedError();
  }

  void getRecentReviews() {
    throw UnimplementedError();
  }
}
