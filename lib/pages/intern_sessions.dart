import 'package:flutter/material.dart';
import 'package:trestle_blog/data/data.dart';

class InternSession extends StatelessWidget {
  const InternSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Intern Sessions",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: sessions.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            sessions[index].imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Text(
                      sessions[index].title,
                      style: const TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
