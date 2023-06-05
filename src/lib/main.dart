import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maintena',
      home: Starter(),
    );
  }
}

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button App'),
      ),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              text: 'MAPS',
              onPressed: () {
                // Action for Button 1
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapScreen(),
                  ),
                );
              },
            ),
            ButtonWidget (
              text: 'GARAGE',
              onPressed: () {
                // SHOWCASE GARAGE
                print('you have pressed garage');
              },
            ),
            ButtonWidget(
              text: 'Forum',
              onPressed: () {
                // forum
                print('see what people have to say :)');
              },

              
            ),
             ButtonWidget(
              text: 'NEWS',
              onPressed: () {
                // news
                print('the latest news');
              },
            ),
             ButtonWidget(
              text: 'PROFIL',
              onPressed: () {
                // to profil sou
                print('see your stats');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonWidget({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final LatLng _initialPosition = LatLng(37.7749, -122.4194); // Example coordinates (San Francisco)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Screen'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _initialPosition,
          zoom: 12,
        ),
        markers: Set<Marker>.from([
          Marker(
            markerId: MarkerId('marker_1'),
            position: _initialPosition,
          ),
        ]),
      ),
    );
  }
}
