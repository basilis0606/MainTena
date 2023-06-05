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
    return reviews.sublist(0, 10);
  }

  void editPost(int postIndex, String newTitle, String newText) {
    posts[postIndex].editPost(newTitle, newText);
  }

  void editComment(int commentIndex, String newText) {
    comments[commentIndex].editComment(newText);
  }

  void editReview(int reviewIndex, double rating, String newText) {
    reviews[reviewIndex].editReview(rating, newText);
  }

  void addPost(String title, String text) {
    posts.add(Post(title, text));
  }

  void addComment(String comment) {
    comments.add(Comment(comment));
  }

  void addReview(double rating, String text) {
    reviews.add(Review(rating, text));
  }
}
