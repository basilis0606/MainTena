import 'Garage.dart';
import 'Newsfeed.dart';
import 'Forum.dart';
import 'Activity.dart';

class User {
  String username;
  String email;
  String phoneNumber;
  bool isMember;
  Garage garage;
  Newsfeed newsfeed = Newsfeed();
  Forum forum = Forum();
  Activity activity = Activity();
}
