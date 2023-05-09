import 'package:flutter/material.dart';
import 'package:try_project/widgets/square_widget.dart';
import 'package:try_project/widgets/2_square_widget.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return SquareWidget2(
          icon: 'assets/icons/gas.svg',
          upLeftText: "74,990 km",
          upRightText: "Apr 29, 2023",
          downLeftText: "Change Oil",
          progress: 0.95,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 16);
      },
    );
  }
}
