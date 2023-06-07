import 'package:flutter/material.dart';
import 'Expense.dart';
import 'ServiceManual.dart';
import 'Notification.dart';
import 'Fuel.dart';
import 'Maintenance.dart';
import 'Damage.dart';
import 'Upgrade.dart';
import 'Insurance.dart';

class Vehicle {
  String name;
  Image? image;
  String plateNumber;
  String model;
  String brand;
  ServiceManual manual;
  List<Expense> expenses_2 = [];

  Vehicle.withManual(
      {required this.name,
      this.image,
      required this.plateNumber,
      required this.model,
      required this.brand,
      required this.manual,
      List<Expense>? expenses_2}) {
    this.expenses_2 = expenses_2 ?? [];
  }

  Vehicle({
    required this.name,
    this.image,
    required this.plateNumber,
    required this.model,
    required this.brand,
    required double miles,
    List<Expense>? expenses_2,
  }) : manual = ServiceManual(mileage: miles, notifications: []) {
    this.expenses_2 = expenses_2 ?? [];
  }

  void createExpense(amount, date, currency, notification) {
    notification.isDone = true;

    expenses_2.add(Expense(
        amount: amount,
        date: date,
        currency: currency,
        notification: notification));
  }

  List<Expense> filterExpenses(List<String> types) {
    List<Expense> filteredExpenses = [];

    for (var expense in expenses_2) {
      if (expense.notification is Maintenance &&
          types.contains('Maintenance')) {
        filteredExpenses.add(expense);
      } else if (expense.notification is Fuel && types.contains('Fuel')) {
        filteredExpenses.add(expense);
      } else if (expense.notification is Damage && types.contains('Damage')) {
        filteredExpenses.add(expense);
      } else if (expense.notification is Upgrade && types.contains('Upgrade')) {
        filteredExpenses.add(expense);
      } else if (expense.notification is Insurance &&
          types.contains('Insurance')) {
        filteredExpenses.add(expense);
      }
    }

    return filteredExpenses;
  }
}
