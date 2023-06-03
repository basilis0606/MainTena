import 'package:flutter/material.dart';
import 'package:try_project/classes/Vehicle.dart';
import 'package:try_project/fragments/garage/expenses.dart';

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
                  Tab(text: "Problem history"),
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
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Text("Error"),
            ],
          ),
        ),
      ),
    );
  }
}
