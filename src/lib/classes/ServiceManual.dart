import 'package:try_project/classes/Notification.dart' as notif;

class ServiceManual {
  double mileage;
  List<notif.Notification>? notifications = [];

  ServiceManual({required this.mileage, this.notifications});

  void createNotification(notif.Notification notification) {
    notifications!.add(notification);
  }

  void upgradeSuggestions() {
    // to be implemented
    throw UnimplementedError();
  }

  void manuallyDone(int index) {
    notifications![index].complete();
  }

  void manuallyIgnore(int index) {
    notifications![index].ignore();
  }
}
