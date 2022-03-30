import 'package:flutter/material.dart';

class TextButton_Custom extends StatelessWidget {
  const TextButton_Custom(
      {Key? key, required this.message, required this.onClick})
      : super(key: key);
  final String message;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: Text(
        message,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
