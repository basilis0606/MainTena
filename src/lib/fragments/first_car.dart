import 'package:flutter/material.dart';
import '../classes/Vehicle.dart';
import 'garage/expenses.dart';
import 'garage/garage_maintenance.dart';
import 'garage/garage_upgrades.dart';
import 'garage/garage_damage.dart';

class FirstCar extends StatelessWidget {
  final Vehicle veh;

  const FirstCar({Key? key, required this.veh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: const SafeArea(
              child: TabBar(
                tabs: [
                  Tab(text: "Expenses"),
                  Tab(text: "Maintenance"),
                  Tab(text: "Upgrades"),
                  Tab(text: "Damage history"),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
              ),
            ),
            backgroundColor: Colors.grey[200],
          ),
          body: TabBarView(
            children: [
              Expenses(my_veh: this.veh), // Pass the named parameter correctly
              MaintenanceFragment(vehicle: this.veh),
              UpgradesFragment(vehicle: this.veh),
              DamagesFragment(vehicle: this.veh),
            ],
          ),
        ),
      ),
    );
  }
}
