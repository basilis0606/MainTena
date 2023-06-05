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
}