import 'Fuel.dart';
import 'Maintenance.dart';
import 'Vehicle.dart';
import 'ServiceManual.dart';

class Test {
  Vehicle v = Vehicle(
      name: "amaksa",
      plateNumber: "aa-45343",
      model: "ibiza 1998",
      brand: "Seat",
      miles: 156.0);
  Test() {
    Fuel f1 = Fuel(
        liters: 10.0,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "gasolina");
    Fuel f2 = Fuel(
        liters: 25.0,
        mileage: 154.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "gasolina");
    Fuel f3 = Fuel(
        liters: 10.0,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "gasolina");
    Fuel f4 = Fuel(
        liters: 25.0,
        mileage: 154.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "gasolina");
    Fuel f5 = Fuel(
        liters: 10.0,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "gasolina");
    Fuel f6 = Fuel(
        liters: 25.0,
        mileage: 154.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "gasolina");
    Maintenance m1 = Maintenance(
        type: "oil change",
        serviceTaskId: 1,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "oil change");
    Maintenance m2 = Maintenance(
        type: "tire replacement",
        serviceTaskId: 2,
        mileage: 250.0,
        date: DateTime.now(),
        estimatedCost: 50.0,
        description: "tire replacement");
    Maintenance m3 = Maintenance(
        type: "oil change",
        serviceTaskId: 1,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "oil change");
    Maintenance m4 = Maintenance(
        type: "tire replacement",
        serviceTaskId: 2,
        mileage: 250.0,
        date: DateTime.now(),
        estimatedCost: 50.0,
        description: "tire replacement");
    Maintenance m5 = Maintenance(
        type: "oil change",
        serviceTaskId: 1,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "oil change");
    Maintenance m6 = Maintenance(
        type: "tire replacement",
        serviceTaskId: 2,
        mileage: 250.0,
        date: DateTime.now(),
        estimatedCost: 50.0,
        description: "tire replacement");
    Maintenance m7 = Maintenance(
        type: "oil change",
        serviceTaskId: 1,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "oil change");

    v.manual.createNotification(f1);
    v.manual.createNotification(f2);
    v.manual.createNotification(f3);
    v.manual.createNotification(f4);
    v.manual.createNotification(f5);
    v.manual.createNotification(f6);
    v.manual.createNotification(m1);
    v.manual.createNotification(m2);
    v.manual.createNotification(m3);
    v.manual.createNotification(m4);
    v.manual.createNotification(m5);
    v.manual.createNotification(m6);
    v.manual.createNotification(m7);

    v.createExpense(10.0, DateTime.now(), "\$", f1);
    v.createExpense(25.0, DateTime.now(), "\$", f2);
    v.createExpense(10.0, DateTime.now(), "\$", f3);
    v.createExpense(25.0, DateTime.now(), "\$", f4);
    v.createExpense(10.0, DateTime.now(), "\$", f5);
    v.createExpense(30.0, DateTime.now(), "\$", m1);
    v.createExpense(60.0, DateTime.now(), "\$", m2);
    v.createExpense(10.0, DateTime.now(), "\$", m3);
    v.createExpense(25.0, DateTime.now(), "\$", m4);
    v.createExpense(30.0, DateTime.now(), "\$", m5);
    v.createExpense(60.0, DateTime.now(), "\$", m6);
  }
}
