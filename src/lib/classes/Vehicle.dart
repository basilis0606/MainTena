
import 'package:flutter/material.dart';
import 'package:try_project/classes/Expense.dart';
import 'package:try_project/classes/ServiceManual.dart';

class Vehicle {
  String name;
  Image? image;
  String plateNumber;
  String model;
  String brand;
  ServiceManual? manual;
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

  Vehicle(
      {required this.name,
      image,
      required this.plateNumber,
      required this.model,
      required this.brand,
      required double miles,
      List<Expense>? expenses_2}) {
    this.expenses_2 = expenses_2 ?? [];
    manual = ServiceManual(mileage: miles, notifications: []);
  }

  void createExpense(amount, date, currency, notification) {
    notification.isDone = true;

    expenses_2.add(Expense(
        amount: amount,
        date: date,
        currency: currency,
        notification: notification));
  }
}