import 'package:flutter/material.dart';
import 'package:try_project/classes/Vehicle.dart';
import '../../widgets/expenses_list.dart';
import '../../widgets/uncompleted_maintenance_list.dart';

class MaintenanceFragment extends StatelessWidget {
  final Vehicle vehicle;

  const MaintenanceFragment({Key? key, required this.vehicle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 40, top: 20, bottom: 10),
              child: Text(
                "Upcoming",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 8,
            ),
            child: uncompletedMaintenanceList(my_veh: vehicle),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 40, top: 20, bottom: 10),
              child: Text(
                "Recent Maintenance",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 8,
            ),
            child: SquareList(my_veh: vehicle, filter: 'Maintenance'),
          ),
        ],
      ),
    );
  }
}
