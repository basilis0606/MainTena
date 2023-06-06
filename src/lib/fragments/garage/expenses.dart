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
        const PopupMenuExample(),
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

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<SampleItem>(
        icon: const Icon(Icons.filter_list),
        initialValue: selectedMenu,
        // Callback that sets the selected popup menu item.
        onSelected: (SampleItem item) {
          setState(() {
            selectedMenu = item;
          });
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
          const PopupMenuItem<SampleItem>(
            value: SampleItem.itemOne,
            child: Text('Item 1'),
          ),
          const PopupMenuItem<SampleItem>(
            value: SampleItem.itemTwo,
            child: Text('Item 2'),
          ),
          const PopupMenuItem<SampleItem>(
            value: SampleItem.itemThree,
            child: Text('Item 3'),
          ),
        ],
      ),
    );
  }
}
