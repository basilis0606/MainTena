import 'package:flutter/material.dart';
import 'package:try_project/widgets/square_widget.dart';
import 'package:try_project/widgets/2_square_widget.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    // Add padding to the listview
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 40, vertical: 8), // Adjust the padding value as needed
      child: ListView.separated(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return SquareWidget2(
            icon: 'assets/icons/gas.svg',
            upLeftText: "74,990 km",
            date: DateTime.now(),
            downLeftText: "Change Oil",
            progress: 0.95,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 50);
        },
      ),
    );
  }
}
