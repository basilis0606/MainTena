import 'dart:async';

import '../fragments/first_car.dart';
import 'package:flutter/material.dart';
import '../classes/User.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final User user;

  final drawerItems = [
    DrawerItem("Map", Icons.map),
    DrawerItem("Newsfeed", Icons.newspaper),
    DrawerItem("Forum", Icons.forum)
  ];

  final cars = [
    DrawerItem("Car 1", Icons.car_repair),
    DrawerItem("Car 2", Icons.car_repair)
  ];

  HomePage({Key? key, required this.user}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getTitle(int pos) {
    if (pos < widget.cars.length) {
      return widget.cars[pos].title;
    } else {
      return widget.drawerItems[pos - widget.cars.length].title;
    }
  }

  _getDrawerItemWidget(int pos) {
    if (pos < widget.cars.length) {
      return FirstCar(veh: widget.user.garage.vehicles[pos]);
    } else if (pos == widget.cars.length ||
        pos == widget.cars.length + 1 ||
        pos == widget.cars.length + 2) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final OverlayState overlayState = Overlay.of(context);
        final OverlayEntry overlayEntry = OverlayEntry(
          builder: (context) => Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: const AlertDialog(
              title: Text('Not Accessible'),
              content: Text('This feature is not accessible yet.'),
            ),
          ),
        );

        overlayState.insert(overlayEntry);

        Timer(const Duration(seconds: 2), () {
          overlayEntry.remove();
        });
      });

      return null;
    } else {
      return const Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    if (index < widget.cars.length) {
      Navigator.of(context).pop(); // close the drawer
    }
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    var carDrawerOptions = <Widget>[];
    for (var i = 0; i < widget.cars.length; i++) {
      var d = widget.cars[i];
      carDrawerOptions.add(ListTile(
        leading: Icon(d.icon),
        title: Text(d.title),
        //select 0
        selected: i == _selectedDrawerIndex,
        // selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }
    drawerOptions.add(ExpansionTile(
      leading: const Icon(Icons.garage),
      title: const Text("My Cars"),
      children: carDrawerOptions,
    ));
    drawerOptions.add(const Divider());
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(ListTile(
        leading: Icon(d.icon),
        title: Text(d.title),
        selected: i + widget.cars.length == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i + widget.cars.length),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(_getTitle(_selectedDrawerIndex),
            style: const TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
        // Set title color to black
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage("assets/profile.png"),
            ),
          ),
          Column(children: drawerOptions)
        ],
      )),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
