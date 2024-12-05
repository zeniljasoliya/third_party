import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastDemo extends StatefulWidget {
  const FlutterToastDemo({super.key});

  @override
  State<FlutterToastDemo> createState() => _FlutterToastDemoState();
}

class _FlutterToastDemoState extends State<FlutterToastDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Hello Good evening",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.brown,
                  fontSize: 16,
                  timeInSecForIosWeb: 2,
                );

                // setState(() {});
              },
              color: Colors.blueAccent,
              child: const Text('Hey'),
            )
          ],
        ),
      ),
    );
  }
}
