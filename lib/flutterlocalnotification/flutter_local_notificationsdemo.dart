import 'package:flutter/material.dart';
import 'package:third_party/flutterlocalnotification/notificationservice.dart';

// import 'flutterlocalnotification/notificationservice.dart';

class FlutterLocalNotificationsDemo extends StatefulWidget {
  const FlutterLocalNotificationsDemo({super.key});

  @override
  State<FlutterLocalNotificationsDemo> createState() =>
      _FlutterLocalNotificationsDemoState();
}

class _FlutterLocalNotificationsDemoState
    extends State<FlutterLocalNotificationsDemo> {
  Notificationservices notificationservices = Notificationservices();
  @override
  void initState() {
    notificationservices.initialiseNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                notificationservices.sendnotification(
                    'This is title', 'This is body');
              },
              child: const Text('Send Notification'),
            ),
            ElevatedButton(
              onPressed: () {
                notificationservices.sechedulenotification(
                    'Schedule Notification', 'Body');
              },
              child: const Text('Schedule Notification'),
            ),
            ElevatedButton(
              onPressed: () {
                notificationservices.stopNotifications();
              },
              child: const Text('stop Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
