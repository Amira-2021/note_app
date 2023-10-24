import 'package:flutter/material.dart';

class TextFeildNote extends StatelessWidget {
  double height;
  TextFeildNote({
    this.height = 70,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.grey),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
