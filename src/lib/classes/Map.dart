import 'Location.dart';
import 'RepairShop.dart';

class Map {
  List<RepairShop>? repairShops;

  Map([List<RepairShop>? repairShops]) {
    this.repairShops = repairShops ?? [];
  }

  getClosestRepairShops(Location location, int serviceId, int quantity) {
    // keeps only those repair shops that can provide the service
    List<RepairShop> repairShopsTemp = this
        .repairShops!
        .where((repairShop) => repairShop.hasRepair(serviceId))
        .toList();

    // return the first quantity repair shops
    return repairShopsTemp.sublist(0, quantity);
  }
}
