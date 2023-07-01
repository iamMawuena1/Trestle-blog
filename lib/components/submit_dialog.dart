import 'package:flutter/material.dart';
import 'package:trestle_blog/blog.dart';

import 'constant.dart';

class SubmitDialog extends StatelessWidget {
  const SubmitDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.send_outlined,
              size: 60,
              color: Colors.greenAccent,
            ),
            const Text(
              "Information receieved, you would be contacted soon.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            MaterialButton(
              color: kColor,
              height: 50,
              minWidth: double.infinity,
              child: const Text(
                "Go to HomePage",
                style: TextStyle(color: kWhite),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BlogPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
