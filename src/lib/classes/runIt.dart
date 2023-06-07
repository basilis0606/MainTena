// Import all classes in one line
import 'User.dart';
import 'Vehicle.dart';

class runIt {
  User u = User('John Doe', 'example@mymail.com', '1234567890', true);

  Vehicle v = Vehicle(
      name: "My Car",
      plateNumber: "ABC1234",
      model: "Model",
      brand: "Brand",
      miles: 1000.0);
  Vehicle v2 = Vehicle(
      name: "My Car",
      plateNumber: "ABC1234",
      model: "Model",
      brand: "Brand",
      miles: 1000.0);

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
    u.garage.addNewVeh(Vehicle(
        name: "name",
        plateNumber: plateNumber,
        model: model,
        brand: brand,
        miles: miles));
    u.garage.addNewVeh(Vehicle(
        name: "name",
        plateNumber: plateNumber,
        model: model,
        brand: brand,
        miles: miles));
  }
}
