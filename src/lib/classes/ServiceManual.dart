import 'package:try_project/classes/Notification.dart' as notif;

class ServiceManual {
  double milage;
  List<notif.Notification> notifications;

  ServiceManual({required this.milage, required this.notifications});

  void createNotification(milage, date, estimatedCost, description) {
    notifications.add(notif.Notification(
        mileage: milage,
        date: date,
        estimatedCost: estimatedCost,
        description: description));
  }
}
