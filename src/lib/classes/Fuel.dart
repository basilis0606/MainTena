import 'Notification.dart' as notif;

class Fuel extends notif.Notification {
  double liters;

  Fuel(
      {required this.liters,
      required mileage,
      required date,
      required estimatedCost,
      required description})
      : super(
            mileage: mileage,
            date: date,
            estimatedCost: estimatedCost,
            description: description);
}
