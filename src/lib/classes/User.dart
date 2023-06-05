import 'Garage.dart';
import 'Newsfeed.dart';
import 'Forum.dart';
import 'Activity.dart';

class User {
  String username;
  String email;
  String phoneNumber;
  bool isMember;
  Garage garage = Garage();
  Newsfeed newsfeed = Newsfeed();
  Forum forum = Forum();
  Activity activity = Activity();

  User(this.username, this.email, this.phoneNumber, this.isMember);

  void addNewVehicle(String name, String plateNumber, String model,
      String brand, double miles) {
    garage.addNewVeh(name, plateNumber, model, brand, miles);
  }

  void addNewPost(String title, String content) {
    activity.addPost(title, content);
  }

  void addNewComment(String comment) {
    activity.addComment(comment);
  }

  void addNewReview(double rating, String text) {
    activity.addReview(rating, text);
  }
}
