import 'package:flutter/material.dart';
import 'package:trestle_blog/components/constant.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kColor,
        title: Text(
          "about us".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "About Us",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              "Trestle Academy Ghana is founded to serve as a hive that will augment with the teachings of Ghana's tertiary"
              "institutionsby equipping the youth with skills in emerging technologies."
              "Though Artificial Intelligence is at the core of our mission, we endeavour to mentorship in design-thinking research,"
              "leadership and entrepreneurship.The academy aims to promote the spirit of collaboration, "
              "innovation,entrepreneurship and leadership among the Ghanaian to become globallycompetitive "
              "most importantly through our partnership programmes with local and foreign companies.",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Website",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            InkWell(
              child: const Text(
                'www.trestleacademyghana.org',
                style: TextStyle(
                  color: kBlue,
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
