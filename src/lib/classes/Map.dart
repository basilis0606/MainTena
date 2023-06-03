import 'Location.dart';
import 'RepairShop.dart';

class Map {
  List<RepairShop>? repairShops;

  Map([List<RepairShop>? repairShops]) {
    this.repairShops = repairShops ?? [];
  }

  List<RepairShop> getClosestRepairShops(Location location, int quantity,
      {int? serviceId}) {
    if (serviceId != null) {
      // Filter repair shops that can provide the specified service
      List<RepairShop> filteredRepairShops = repairShops!
          .where((repairShop) => repairShop.hasRepair(serviceId))
          .toList();

      // Return the first `quantity` repair shops that provide the service
      return filteredRepairShops.sublist(0, quantity);
    } else {
      // Return the first `quantity` repair shops
      return repairShops!.sublist(0, quantity);
    }
  }
}
