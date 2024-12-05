import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class FlutterStaggeredAnimationsDemo extends StatefulWidget {
  const FlutterStaggeredAnimationsDemo({super.key});

  @override
  State<FlutterStaggeredAnimationsDemo> createState() =>
      _FlutterStaggeredAnimationsDemoState();
}

class _FlutterStaggeredAnimationsDemoState
    extends State<FlutterStaggeredAnimationsDemo> {
  int columnCount = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: columnCount,
          children: List.generate(
            100,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 375),
                columnCount: columnCount,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.deepOrange,
                        child: const Center(
                          child: Text(
                            "Animated",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
