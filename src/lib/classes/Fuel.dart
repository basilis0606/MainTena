import 'package:try_project/classes/Comment.dart';
import 'dart:core';
class Fuel extends notif.Notification {
  double liters;

  Fuel(
      {required this.liters,
      required mileage,
      required date,
      required estimatedCost,
      required description
      }
      )
      : super(
            mileage: mileage,
            date: date,
            estimatedCost: estimatedCost,
            description: description);

    int checkDate() {
    int cost
    if(date> DateTime.now)
    {
        cost=this.estimatedCost
    }
    return cost;
    throw UnimplementedError();
  }
}