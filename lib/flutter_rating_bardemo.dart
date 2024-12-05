import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FlutterratingbarDemo extends StatefulWidget {
  const FlutterratingbarDemo({super.key});

  @override
  State<FlutterratingbarDemo> createState() => _FlutterratingbarDemoState();
}

class _FlutterratingbarDemoState extends State<FlutterratingbarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4),
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.black,
              ),
              onRatingUpdate: (value) {
                print(value);
              },
            ),
            RatingBarIndicator(
              rating: 3.75,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 50,
              direction: Axis.vertical,
            )
          ],
        ),
      ),
    );
  }
}
