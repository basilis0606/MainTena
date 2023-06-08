import 'package:flutter/material.dart';
import '../../classes/Vehicle.dart';
import '../../widgets/expenses_list.dart';

class UpgradesFragment extends StatelessWidget {
  final Vehicle vehicle;

  const UpgradesFragment({Key? key, required this.vehicle}) : super(key: key);

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
                "Recent Upgrades",
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
            child: SquareList(my_veh: vehicle, filter: 'Upgrades'),
          ),
        ],
      ),
    );
  }
}
