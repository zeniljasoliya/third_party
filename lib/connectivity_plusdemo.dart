import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityPlusDemo extends StatelessWidget {
  const ConnectivityPlusDemo({super.key, this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Check Connection Page")),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text("Check Connection"),
            onPressed: () async {
              final connectivityResult =
                  await Connectivity().checkConnectivity();
              if (connectivityResult == ConnectivityResult.none) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('You\'re not connected to a network')));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        'You\'re connected to a ${connectivityResult.name} network')));
              }
            },
          ),
        ),
      ),
    );
  }
}
