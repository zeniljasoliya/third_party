import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderDemo extends StatefulWidget {
  const CarouselSliderDemo({super.key});

  @override
  State<CarouselSliderDemo> createState() => _CarouselSliderDemoState();
}

class _CarouselSliderDemoState extends State<CarouselSliderDemo> {
  final List<String> images = [
    'asset/images/images.jpeg',
    'asset/images/2.jpeg',
    'asset/images/3.jpeg',
    'asset/images/4.jpeg',
    'asset/images/5.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offer Slider"),
      ),
      body: ListView(children: [
        const SizedBox(
          height: 20,
        ),
        CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) => Container(
            child: Image(
              image: AssetImage(
                images[index],
              ),
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),

          //Slider Container properties
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ]),
    );
  }
}
