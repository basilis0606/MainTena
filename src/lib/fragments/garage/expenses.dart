import 'package:flutter/material.dart';
import 'package:try_project/classes/Maintenance.dart';
import 'package:try_project/classes/Vehicle.dart';
import 'package:try_project/classes/Fuel.dart';
import 'package:try_project/widgets/square_widget.dart';
import 'package:try_project/widgets/2_square_widget.dart';

class Expenses extends StatelessWidget {
  final Vehicle my_veh;

  const Expenses({Key? key, required this.my_veh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Add padding to the listview
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 40, vertical: 8), // Adjust the padding value as needed
      child: ListView.separated(
        itemCount: my_veh.expenses_2.length,
        itemBuilder: (BuildContext context, int index) {
          if (my_veh.expenses_2[index].notification is Maintenance) {
            return SquareWidget2(
              icon: 'assets/icons/maintenance.svg',
              upLeftText:
                  "${my_veh.expenses_2[index].notification.mileage} km,",
              date: my_veh.expenses_2[index].date,
              downLeftText: "hello",
              progress: 0.95,
            );
          } else if (my_veh.expenses_2[index].notification is Fuel) {
            return SquareWidget2(
              icon: 'assets/icons/gas.svg',
              upLeftText: "${my_veh.expenses_2[index].notification.mileage} km",
              date: my_veh.expenses_2[index].date,
              downLeftText: (my_veh.expenses_2[index].notification as Fuel)
                  .liters
                  .toString(),
            );
          }
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 50);
        },
      ),
    );
  }
}
