// Import all classes in one line
import 'package:flutter/services.dart';

import 'User.dart';
import 'Vehicle.dart';

class runIt {
  User u = User('John Doe', 'example@mymail.com', '1234567890', true);

  void initForum() {
    for (int i = 1; i <= 20; i++) {
      String title = "Post $i";
      String content = "Content of Post $i";
      u.forum.newPost(title, content);

      for (int j = 1; j <= 10; j++) {
        String comment = "Comment $j on Post $i";
        u.forum.posts[i - 1].addComment(comment);
      }
    }
  }

  void initGarage() {
    u.addNewVehicle("Car1", "ABC123", "SUV", "Ford", 10000.75);
    u.addNewVehicle("Car2", "XYZ987", "Panda", "Fiat", 1000.84);
  }
}
