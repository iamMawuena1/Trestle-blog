import 'package:flutter/material.dart';
import 'package:trestle_blog/components/submit_dialog.dart';
import 'constant.dart';

class EnrollDialogPane extends StatelessWidget {
  const EnrollDialogPane({super.key});

  @override
  Widget build(BuildContext context) {
    //cancel button
    void cancelButton() {
      Navigator.of(context).pop();
    }

    //submit button
    submitButton() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return const SubmitDialog();
          });
    }

    return AlertDialog(
      content: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                hintText: "Enter Email",
              ),
            ),
            const SizedBox(height: kPadding / 2),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Enter Phone Number",
              ),
            ),
            const SizedBox(height: kPadding / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  height: 50,
                  minWidth: 100,
                  elevation: 2.0,
                  color: kColor,
                  onPressed: cancelButton,
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: kWhite),
                  ),
                ),
                const SizedBox(width: kPadding / 2),
                MaterialButton(
                  height: 50,
                  minWidth: 100,
                  elevation: 2.0,
                  color: kColor,
                  onPressed: submitButton,
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: kWhite),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
