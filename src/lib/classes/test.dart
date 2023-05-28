import 'Expense.dart';
import 'Fuel.dart';
import 'Maintenance.dart';
import 'Notification.dart';
import 'ServiceTask.dart';
import 'Vehicle.dart';

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
    Maintenance m1 = Maintenance(
        type: "oil change",
        serviceTaskId: 1,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "oil change");
    Maintenance m2 = Maintenance(
        type: "oil change",
        serviceTaskId: 1,
        mileage: 15.0,
        date: DateTime.now(),
        estimatedCost: 10.0,
        description: "oil change");

    v.createExpense(10.0, DateTime.now(), "USD", f1);
    v.createExpense(10.0, DateTime.now(), "USD", f2);
    v.createExpense(10.0, DateTime.now(), "USD", m1);
    v.createExpense(10.0, DateTime.now(), "USD", m2);

    print(v.expenses_2);
  }
}
