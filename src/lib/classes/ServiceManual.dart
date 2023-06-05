import 'package:try_project/classes/Notification.dart' as notif;

class ServiceManual {
  double mileage;
  List<notif.Notification> notifications;

  ServiceManual({required this.mileage, required this.notifications});

  void createNotification(milage, date, estimatedCost, description) {
    notifications.add(notif.Notification(
        mileage: milage,
        date: date,
        estimatedCost: estimatedCost,
        description: description));
  }

  void upgradeSuggestions() {
    // to be implemented
    throw UnimplementedError();
  }
}
