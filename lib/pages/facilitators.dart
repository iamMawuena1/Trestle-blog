import 'package:flutter/material.dart';
import 'package:trestle_blog/components/constant.dart';

class FacilitatorsPage extends StatelessWidget {
  const FacilitatorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "teams".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: ((context, index) {
              return SizedBox(
                height: 200.0,
                width: 200.0,
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/profile2.jpg'),
                      maxRadius: 50.0,
                    ),
                    const SizedBox(height: 5.0),
                    const Text(
                      "Alexander Smith",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      "Engineer",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
