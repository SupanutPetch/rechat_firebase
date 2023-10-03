import 'package:flutter/material.dart';

class Show {
  static Widget snackBar(String text) {
    return SnackBar(
        content:
            Text(text, style: const TextStyle(fontWeight: FontWeight.w800)),
        backgroundColor: Colors.lightGreen);
  }
}
