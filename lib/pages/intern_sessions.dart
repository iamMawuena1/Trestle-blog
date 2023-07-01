import 'package:flutter/material.dart';
import 'package:trestle_blog/data/data.dart';
import 'package:trestle_blog/modal/utils.dart';
import 'package:trestle_blog/pages/detailscreen.dart';

class InternSession extends StatefulWidget {
  const InternSession({super.key, required this.skills});
  final List<Skills> skills;

  @override
  State<InternSession> createState() => _InternSessionState();
}

class _InternSessionState extends State<InternSession> {
  //navigation
  void detailPage(Skills skills) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(skills: skills),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
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
                itemCount: skills.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      detailPage(skills[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 80,
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(skills[index].imageUrl),
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              skills[index].title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
