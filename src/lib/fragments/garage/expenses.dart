import 'package:flutter/material.dart';
import 'package:try_project/classes/Maintenance.dart';
import 'package:try_project/classes/Vehicle.dart';
import 'package:try_project/classes/Fuel.dart';
import 'package:try_project/widgets/square_widget.dart';
import '../../widgets/expenses_list.dart';

class Expenses extends StatelessWidget {
  final Vehicle my_veh;

  const Expenses({Key? key, required this.my_veh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Add padding to the listview
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 40, vertical: 8), // Adjust the padding value as needed
      child: SquareList(my_veh: my_veh),
    );
  }
}
