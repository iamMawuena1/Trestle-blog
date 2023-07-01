import 'package:flutter/material.dart';
import 'package:trestle_blog/components/constant.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About Us",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
           Text(
            "Trestle Academy Ghana is founded to serve as a hive that will augment with the teachings of Ghana's tertiary"
            "institutionsby equipping the youth with skills in emerging technologies."
            "Though Artificial Intelligence is at the core of our mission," 
            "we endeavour to mentorship in design-thinking research,leadership and entrepreneurship."
            "The academy aims to promote the spirit of collaboration, innovation,entrepreneurship"
            "and leadership among the Ghanaian to become globallycompetitive most importantly "
            "through our partnership programmes with local and foreign companies.",
            style: TextStyle(
              color: textColor,
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
          const Text(
            "Specialities",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: kBlack,
            ),
          ),
          Text(
            "Artificial Intelligence, Data Science," 
            "Machine Learning, Entrepreneurship," 
            "Web3, IoT, Robotics Process Automation, and Brand Development",
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w300,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
