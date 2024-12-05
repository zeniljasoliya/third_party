import 'package:flutter/material.dart';

import 'package:third_party/permissionController.dart';

class PermissionHandelerDemo extends StatefulWidget {
  const PermissionHandelerDemo({super.key});

  @override
  State<PermissionHandelerDemo> createState() => _PermissionHandelerDemoState();
}

class _PermissionHandelerDemoState extends State<PermissionHandelerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () async {
                camerapermission();
              },
              color: Colors.blueAccent,
              child: const Text('Camerra Permissionm'),
            ),
            MaterialButton(
              onPressed: () async {
                locationpermission();
              },
              color: Colors.blueAccent,
              child: const Text('Loaction Permissionm'),
            )
          ],
        ),
      ),
    );
  }
}
