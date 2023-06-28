import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  List<String> images = [
    "assets/flutter.png",
    "assets/rpa.jpg",
    "assets/webdev.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 500),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.8,
      ),
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
