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

    void setLiters()
    {
         // Read input from the user
  String input = stdin.readLineSync();

  // Parse the input string to a double
  double value = double.parse(input);

      liters= value;    }

    int checkDate() {
    int cost
    if(date> DateTime.now)
    {
        cost=this.estimatedCost
    }

    double egetLiters()
    {

        return this.liters
    }

    return cost;
    throw UnimplementedError();
  }
}