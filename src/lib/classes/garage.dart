import 'package:flutter/material.dart';
import 'package:try_project/classes/Expense.dart';
import 'package:try_project/classes/ServiceManual.dart';

class Garage {

  List<Vehicle> vehicles;

  Garage()
  {

    vehicles=[];
  }
void addVehicle(Vehicle vehicle) 
  {
    vehicles.add(vehicle);
  }


}