import 'Vehicle.dart';

class Garage {
  List<Vehicle> vehicles = [];

  Garage();

  void addNewVeh(String name, String plateNumber, String model, String brand,
      double miles) {
    vehicles.add(Vehicle(
        name: name,
        plateNumber: plateNumber,
        model: model,
        brand: brand,
        miles: miles));
  }
}
