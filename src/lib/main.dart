import 'classes/User.dart';
import 'pages/home_page.dart';
import 'package:flutter/material.dart';
import 'classes/test.dart';
import 'classes/runIt.dart';

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
    User u = runIt().user;

    return MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xff6750a4),
      ),
      home: HomePage(veh: t.v, user: u),
    );
  }
}
