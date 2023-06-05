import 'package:try_project/classes/Location.dart';
import 'package:try_project/classes/Notification.dart' as notif;
import 'Map.dart' as myMap;

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
  getRepairShops(myMap.Map m, Location location, int quantity) {
    return m.getClosestRepairShops(location, quantity, serviceTaskId);
  }
}
