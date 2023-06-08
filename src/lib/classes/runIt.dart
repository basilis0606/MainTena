// Import all classes in one line
import 'package:flutter/services.dart';

import 'User.dart';
import 'Vehicle.dart';
import 'Fuel.dart';
import 'Maintenance.dart';
import 'Damage.dart';
import 'Upgrade.dart';
import 'Insurance.dart';

class runIt {
  User u = User('John Doe', 'example@mymail.com', '1234567890', true);

  runIt() {
    initForum();
    initGarage();
    initVehicle();
  }

  // getter for user
  User get user => u;

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

  void initVehicle() {
    Fuel f1 = Fuel(
        liters: 10.0,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "Shell");
    Fuel f2 = Fuel(
        liters: 25.0,
        mileage: 154.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "bp");
    Fuel f3 = Fuel(
        liters: 10.0,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "petrel");
    Fuel f4 = Fuel(
        liters: 25.0,
        mileage: 154.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "gasolina");
    Fuel f5 = Fuel(
        liters: 10.0,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "shell vpower");
    Fuel f6 = Fuel(
        liters: 25.0,
        mileage: 154.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "fasi");
    Fuel f7 = Fuel(
        liters: 10.0,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "shell");
    Maintenance m1 = Maintenance(
        type: "oil change",
        serviceTaskId: 11,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "oil change");
    Maintenance m2 = Maintenance(
        type: "tire replacement",
        serviceTaskId: 12,
        mileage: 250.0,
        date: DateTime.now(),
        estimatedCost: 50.0,
        description: "tire replacement");
    Maintenance m3 = Maintenance(
        type: "oil change",
        serviceTaskId: 13,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "oil change");
    Maintenance m4 = Maintenance(
        type: "tire replacement",
        serviceTaskId: 14,
        mileage: 250.0,
        date: DateTime.now(),
        estimatedCost: 50.0,
        description: "tire replacement");
    Maintenance m5 = Maintenance(
        type: "oil change",
        serviceTaskId: 15,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "oil change");
    Maintenance m6 = Maintenance(
        type: "tire replacement",
        serviceTaskId: 16,
        mileage: 250.0,
        date: DateTime.now(),
        estimatedCost: 50.0,
        description: "tire replacement");
    Maintenance m7 = Maintenance(
        type: "brake pad replacement",
        serviceTaskId: 17,
        mileage: 500.0,
        date: DateTime.now(),
        estimatedCost: 100.0,
        description: "brake pad replacement");

    Maintenance m8 = Maintenance(
        type: "air filter replacement",
        serviceTaskId: 18,
        mileage: 100000.0,
        date: DateTime.now(),
        estimatedCost: 20.0,
        description: "air filter replacement");
    Maintenance m9 = Maintenance(
        type: "oil change",
        serviceTaskId: 19,
        mileage: 7500.0,
        date: DateTime.now(),
        estimatedCost: 30.0,
        description: "oil change");

    Maintenance m10 = Maintenance(
        type: "battery replacement",
        serviceTaskId: 20,
        mileage: 20000.0,
        date: DateTime.now(),
        estimatedCost: 150.0,
        description: "battery replacement");

    Upgrade up1 = Upgrade(
        type: "Nitro",
        serviceTaskId: 21,
        mileage: 1500.0,
        date: DateTime.now(),
        estimatedCost: 890.0,
        description: "You can run faster");

    Upgrade up2 = Upgrade(
        type: "fancy sit covers",
        serviceTaskId: 22,
        mileage: 30.0,
        date: DateTime.now(),
        estimatedCost: 25.0,
        description: "You can sit better");

    Upgrade up3 = Upgrade(
        type: "Cup holder",
        serviceTaskId: 23,
        mileage: 1000.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "You can drink safer");

    Upgrade up4 = Upgrade(
        type: "Gps",
        serviceTaskId: 24,
        mileage: 321.0,
        date: DateTime.now(),
        estimatedCost: 200.0,
        description: "You know where you are");

    Damage d1 = Damage(
        type: "paint scratch",
        serviceTaskId: 31,
        mileage: 321.0,
        date: DateTime.now(),
        estimatedCost: 200.0,
        description: "it is ugly");

    Damage d2 = Damage(
        type: "broken mirror",
        serviceTaskId: 32,
        mileage: 321.0,
        date: DateTime.now(),
        estimatedCost: 450.0,
        description: "7 years of bad luck");

    Insurance i1 = Insurance(
      completion: DateTime(2026, 6, 15, 10, 30, 0),
      type: "alience",
      mileage: 33333.0,
      date: DateTime.now(),
      estimatedCost: 10.0,
      description: "alience",
    );

    Insurance i2 = Insurance(
        completion: DateTime(2026, 6, 15, 10, 30, 0),
        type: "mera",
        mileage: 123412.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "mera");

    u.garage.vehicles[0].manual.createNotification(f1);
    u.garage.vehicles[0].manual.createNotification(f2);
    u.garage.vehicles[0].manual.createNotification(f3);

    u.garage.vehicles[0].manual.createNotification(m1);
    u.garage.vehicles[0].manual.createNotification(m2);
    u.garage.vehicles[0].manual.createNotification(m3);
    u.garage.vehicles[0].manual.createNotification(m7);
    u.garage.vehicles[0].manual.createNotification(m8);
    u.garage.vehicles[0].manual.createNotification(m9);
    u.garage.vehicles[0].manual.createNotification(m10);

    u.garage.vehicles[0].manual.createNotification(up1);
    u.garage.vehicles[0].manual.createNotification(up2);

    u.garage.vehicles[0].manual.createNotification(d1);

    u.garage.vehicles[0].manual.createNotification(i1);

    u.garage.vehicles[1].manual.createNotification(f4);
    u.garage.vehicles[1].manual.createNotification(f5);
    u.garage.vehicles[1].manual.createNotification(f6);

    u.garage.vehicles[1].manual.createNotification(m4);
    u.garage.vehicles[1].manual.createNotification(m5);
    u.garage.vehicles[1].manual.createNotification(m6);

    u.garage.vehicles[1].manual.createNotification(up3);
    u.garage.vehicles[1].manual.createNotification(up4);

    u.garage.vehicles[1].manual.createNotification(d2);

    u.garage.vehicles[1].manual.createNotification(i2);

    u.garage.vehicles[0].createExpense(10.0, DateTime.now(), "\$", f1);
    u.garage.vehicles[0].createExpense(30.0, DateTime.now(), "\$", f3);
    u.garage.vehicles[0].createExpense(40.0, DateTime.now(), "\$", m1);
    u.garage.vehicles[0].createExpense(60.0, DateTime.now(), "\$", m3);
    u.garage.vehicles[0].createExpense(80.0, DateTime.now(), "\$", up2);
    u.garage.vehicles[0].createExpense(20.0, DateTime.now(), "\$", f2);
    u.garage.vehicles[0].createExpense(50.0, DateTime.now(), "\$", m2);
    u.garage.vehicles[0].createExpense(30.0, DateTime.now(), "\$", up4);
    u.garage.vehicles[0].createExpense(90.0, DateTime.now(), "\$", d1);
    u.garage.vehicles[0].createExpense(10.0, DateTime.now(), "\$", m7);
    u.garage.vehicles[0].createExpense(20.0, DateTime.now(), "\$", up3);
    u.garage.vehicles[0].createExpense(70.0, DateTime.now(), "\$", up1);
    u.garage.vehicles[0].createExpense(100.0, DateTime.now(), "\$", i1);

    u.garage.vehicles[1].createExpense(10.0, DateTime.now(), "\$", f4);
    u.garage.vehicles[1].createExpense(20.0, DateTime.now(), "\$", f5);
    u.garage.vehicles[1].createExpense(30.0, DateTime.now(), "\$", f6);
    u.garage.vehicles[1].createExpense(40.0, DateTime.now(), "\$", m4);
    u.garage.vehicles[1].createExpense(50.0, DateTime.now(), "\$", m5);
    u.garage.vehicles[1].createExpense(60.0, DateTime.now(), "\$", m6);
    u.garage.vehicles[1].createExpense(70.0, DateTime.now(), "\$", up3);
    u.garage.vehicles[1].createExpense(80.0, DateTime.now(), "\$", up4);
    u.garage.vehicles[1].createExpense(90.0, DateTime.now(), "\$", d2);
    u.garage.vehicles[1].createExpense(1000.0, DateTime.now(), "\$", i2);
  }
}
