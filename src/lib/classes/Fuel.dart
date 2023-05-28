import 'package:try_project/classes/Notification.dart' as notif;

class Fuel extends notif.Notification {
  double liters;

  Fuel(
      {required this.liters,
      required mileage,
      required date,
      required estimatedCost,
      description})
      : super(
            mileage: mileage,
            date: date,
            estimatedCost: estimatedCost,
            description: description);
}
