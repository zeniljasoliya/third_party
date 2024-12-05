import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrllauncherDemo extends StatefulWidget {
  const UrllauncherDemo({super.key});

  @override
  State<UrllauncherDemo> createState() => _UrllauncherDemoState();
}

class _UrllauncherDemoState extends State<UrllauncherDemo> {
  final Uri url = Uri.parse('https://www.amazon.in');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Url launcher"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              child: const Text('Show Website'),
            ),
          ],
        ),
      ),
    );
  }
}
