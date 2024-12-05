import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapFlutterDemo extends StatefulWidget {
  const GoogleMapFlutterDemo({super.key});

  @override
  State<GoogleMapFlutterDemo> createState() => _GoogleMapFlutterDemoState();
}

class _GoogleMapFlutterDemoState extends State<GoogleMapFlutterDemo> {
  final Completer<GoogleMapController> _controller = Completer();

  // static const LatLng center = LatLng(45.521563, -122.677433);
  CameraPosition initialPosition =
      const CameraPosition(target: LatLng(26.8206, 30.8025), zoom: 11.0);
  void onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Maps Sample App'),
        backgroundColor: Colors.green,
      ),
      body: GoogleMap(
          mapType: MapType.hybrid,
          onMapCreated: onMapCreated,
          initialCameraPosition: initialPosition),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('button pressed'),
        materialTapTargetSize: MaterialTapTargetSize.padded,
        backgroundColor: Colors.green,
        child: const Icon(Icons.map, size: 36.0),

        // ),
      ),
    ));
  }
}
