import 'package:flutter/material.dart';
import 'package:try_project/classes/Maintenance.dart';
import 'package:try_project/classes/Vehicle.dart';
import 'package:try_project/classes/Fuel.dart';
import 'package:try_project/widgets/square_widget.dart';
import '../../widgets/expenses_list.dart';

// This is the type used by the popup menu below.
enum SampleItem { itemOne, itemTwo, itemThree }

class Expenses extends StatelessWidget {
  final Vehicle my_veh;

  const Expenses({Key? key, required this.my_veh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 8,
          ),
          child: SquareList(my_veh: my_veh),
        ),
      ],
    );
  }
}
