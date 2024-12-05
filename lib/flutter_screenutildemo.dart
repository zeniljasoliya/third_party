import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlutterScreenutilDemo extends StatefulWidget {
  const FlutterScreenutilDemo({super.key});

  @override
  State<FlutterScreenutilDemo> createState() => _FlutterScreenutilDemoState();
}

class _FlutterScreenutilDemoState extends State<FlutterScreenutilDemo> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ScreenUtilInit(
      designSize: Size(width, height),
      builder: (context, child) => Container(
        height: height,
        width: width,
        color: Colors.pinkAccent,
        child: Center(
          child: Container(
            height: 0.2.sh,
            width: 1.sw,
            color: Colors.blue,
            child: Center(
              child: Text(
                'ScrrenUtilInit',
                style: TextStyle(fontSize: 0.1.sw),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
