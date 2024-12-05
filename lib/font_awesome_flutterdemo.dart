import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeFlutterDemo extends StatefulWidget {
  const FontAwesomeFlutterDemo({super.key});

  @override
  State<FontAwesomeFlutterDemo> createState() => _FontAwesomeFlutterDemoState();
}

class _FontAwesomeFlutterDemoState extends State<FontAwesomeFlutterDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Use Icons"),
          leading: const Icon(Icons.menu),
          //placing inbuilt icon on leading of appbar
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.amazon),
              //using font awesome icon in action list of appbar
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.cartPlus),
              //cart+ icon from FontAwesome
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.anchorCircleCheck),
              //cart+ icon from FontAwesome
            ),
          ],
        ),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton.icon(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.all(15),
                child: Icon(FontAwesomeIcons.download, size: 50),
              ),
              label: const Text(
                "Flat Icons",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
              ),
            )) //set a
        );
  }
}
