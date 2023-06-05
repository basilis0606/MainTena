import 'Review.dart';
import 'Post.dart';
import 'Comment.dart';

class Activity {
  List<Review> reviews = [];
  List<Comment> comments = [];
  List<Post> posts = [];

  Activity();

  List<Post> getRecentPosts() {
    // return first 10 posts
    return posts.sublist(0, 10);
  }

  List<Comment> getRecentComments() {
    return comments.sublist(0, 10);
  }

  List<Review> getRecentReviews() {
    throw UnimplementedError();
  }
}
