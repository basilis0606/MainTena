import 'package:flutter/material.dart';
import 'package:try_project/fragments/garage/Expenses.dart';

class FirstCar extends StatelessWidget {
  const FirstCar({super.key});

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
          body: const TabBarView(
            children: [
              Expenses(),
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
