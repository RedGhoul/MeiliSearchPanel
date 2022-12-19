import 'package:flutter/material.dart';

class Utils {
  static showAlertDialog(BuildContext context, void Function() onExit) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: const Text("Url or Password was not entered"),
          actions: [
            TextButton(
              child: const Text("Return"),
              onPressed: () {
                onExit();
              },
            ),
          ],
        );
      },
    );
  }
}