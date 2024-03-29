import 'package:flutter/material.dart';
import '../../classes/Vehicle.dart';
import '../../widgets/expenses_list.dart';

enum SampleItem { All, Maintenance, Fuel, Upgrades, Insurance, Damage }

class Expenses extends StatefulWidget {
  final Vehicle my_veh;

  const Expenses({Key? key, required this.my_veh}) : super(key: key);

  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your desired functionality here
        },
        child: const Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 45, top: 16, bottom: 8),
              child: PopupMenuExample(
                onItemSelected: (SampleItem item) {
                  setState(() {
                    selectedMenu = item;
                  });
                },
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 40, bottom: 10),
              child: Text(
                "Recent Expenses",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 8,
              ),
              child: SquareList(
                  my_veh: widget.my_veh, filter: getFilterCondition()),
            ),
          ),
        ],
      ),
    );
  }

  String getFilterCondition() {
    if (selectedMenu == SampleItem.Maintenance) {
      return 'Maintenance';
    } else if (selectedMenu == SampleItem.Fuel) {
      return 'Fuel';
    } else if (selectedMenu == SampleItem.Upgrades) {
      return 'Upgrades';
    } else if (selectedMenu == SampleItem.Insurance) {
      return 'Insurance';
    } else if (selectedMenu == SampleItem.Damage) {
      return 'Damage';
    } else {
      return 'All';
    }
  }
}

class PopupMenuExample extends StatefulWidget {
  final Function(SampleItem) onItemSelected;

  const PopupMenuExample({Key? key, required this.onItemSelected})
      : super(key: key);

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SampleItem>(
      icon: const Icon(Icons.filter_list),
      initialValue: selectedMenu,
      onSelected: (SampleItem item) {
        setState(() {
          selectedMenu = item;
        });
        widget.onItemSelected(item);
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          value: SampleItem.All,
          child: Text('All'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.Maintenance,
          child: Text('Maintenance'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.Fuel,
          child: Text('Fuel'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.Upgrades,
          child: Text('Upgrades'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.Insurance,
          child: Text('Insurance'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.Damage,
          child: Text('Damage'),
        ),
      ],
    );
  }
}
