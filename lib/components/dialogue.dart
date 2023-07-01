import 'package:flutter/material.dart';

class DialoguePane extends StatelessWidget {
  const DialoguePane({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Confirm Exit"),
      content: const Text("Are you sure you want to exit the app?"),
      actions: [
        TextButton(
          onPressed: onPressed,
          child: const Text("Yes"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("No"),
        ),
      ],
    );
  }
}
