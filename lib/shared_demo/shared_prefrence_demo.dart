import 'package:flutter/material.dart';
import 'package:third_party/shared_demo/counter_shared.dart';

class SharedDemo extends StatefulWidget {
  const SharedDemo({super.key});

  @override
  State<SharedDemo> createState() => _SharedDemoState();
}

class _SharedDemoState extends State<SharedDemo> {
  int counter = CounterShared.getCounter;
  void increment() {
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              CounterShared.setCounter = ++counter;
              counter = CounterShared.getCounter;
              // increment();
              setState(() {});
            },
            child: const Icon(Icons.add)),
        body: Center(
          child: Text(counter.toString()),
        ),
      ),
    );
  }
}
