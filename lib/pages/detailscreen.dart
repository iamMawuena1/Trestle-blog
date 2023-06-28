import 'package:flutter/material.dart';
import 'package:trestle_blog/modal/utils.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Sessions sessions;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                child: Image(image: AssetImage(''),),),
          ],
        ),
      ),
    );
  }
}
