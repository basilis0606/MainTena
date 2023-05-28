import 'package:try_project/classes/Notification.dart' as notif;

class ServiceTask extends notif.Notification {
  int serviceTaskId;

  ServiceTask(
      {required this.serviceTaskId,
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
