import 'package:flutter/material.dart';
import 'package:trestle_blog/components/drawer.dart';
import 'package:trestle_blog/components/slider.dart';
import 'package:trestle_blog/pages/about.dart';
import 'package:trestle_blog/pages/intern_sessions.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trestle Academy Ghana',),
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body:  const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                SliderPage(),
                AboutPage(),
                InternSession(skills: [],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}