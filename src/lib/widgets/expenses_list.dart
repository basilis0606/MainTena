import 'package:flutter/material.dart';
import '../classes/Vehicle.dart';
import '../classes/Expense.dart';
import '../classes/Notification.dart' as notif;
import '../classes/Maintenance.dart';
import '../classes/Fuel.dart';
import '../classes/ServiceManual.dart';
import '../classes/Upgrade.dart';
import '../classes/Insurance.dart';
import '../classes/Damage.dart';

import 'square_widget.dart';

class SquareList extends StatelessWidget {
  final Vehicle my_veh;

  const SquareList({Key? key, required this.my_veh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      shrinkWrap: true,
      itemCount: my_veh.expenses_2.length,
      itemBuilder: (BuildContext context, int index) {
        if (my_veh.expenses_2[index].notification is Maintenance) {
          return SquareWidget2(
            icon: 'assets/icons/maintenance.svg',
            upLeftText: "${my_veh.expenses_2[index].notification.mileage} km,",
            date: my_veh.expenses_2[index].date,
            downLeftText:
                (my_veh.expenses_2[index].notification as Maintenance).type,
            cost: my_veh.expenses_2[index].currency.toString() +
                my_veh.expenses_2[index].amount.toString(),
          );
        } else if (my_veh.expenses_2[index].notification is Fuel) {
          return SquareWidget2(
            icon: 'assets/icons/gas.svg',
            upLeftText: "${my_veh.expenses_2[index].notification.mileage} km",
            date: my_veh.expenses_2[index].date,
            downLeftText: (my_veh.expenses_2[index].notification as Fuel)
                .liters
                .toString(),
            cost: my_veh.expenses_2[index].currency.toString() +
                my_veh.expenses_2[index].amount.toString(),
          );
        } else if (my_veh.expenses_2[index].notification is Damage) {
          return SquareWidget2(
            icon: 'assets/icons/damage.svg',
            upLeftText: "${my_veh.expenses_2[index].notification.mileage} km",
            date: my_veh.expenses_2[index].date,
            downLeftText:
                (my_veh.expenses_2[index].notification as Damage).type,
            cost: my_veh.expenses_2[index].currency.toString() +
                my_veh.expenses_2[index].amount.toString(),
          );
        } else if (my_veh.expenses_2[index].notification is Upgrade) {
          return SquareWidget2(
            icon: 'assets/icons/upgrade.svg',
            upLeftText: "${my_veh.expenses_2[index].notification.mileage} km",
            date: my_veh.expenses_2[index].date,
            downLeftText:
                (my_veh.expenses_2[index].notification as Upgrade).type,
            cost: my_veh.expenses_2[index].currency.toString() +
                my_veh.expenses_2[index].amount.toString(),
          );
        } else if (my_veh.expenses_2[index].notification is Insurance) {
          return SquareWidget2(
            icon: 'assets/icons/insurance.svg',
            upLeftText: "${my_veh.expenses_2[index].notification.mileage} km",
            date: my_veh.expenses_2[index].date,
            downLeftText:
                (my_veh.expenses_2[index].notification as Insurance).type,
            cost: my_veh.expenses_2[index].currency.toString() +
                my_veh.expenses_2[index].amount.toString(),
          );
        }
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 50);
      },
    ));
  }
}
