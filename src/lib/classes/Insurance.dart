import 'Notification.dart' as notif;

class Insurance extends notif.Notification {
  DateTime completion;
  String type;

  Insurance(
      {required this.completion,
      required this.type,
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
