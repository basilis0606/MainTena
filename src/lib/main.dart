import 'package:try_project/classes/Fuel.dart';
import 'package:try_project/classes/Maintenance.dart';
import 'package:try_project/classes/Vehicle.dart';
import 'package:try_project/classes/test.dart';
import 'package:try_project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'classes/test.dart';

// void main() => runApp(const MyApp());

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Test t = Test();

    return MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(veh: t.v),
    );
  }
}
