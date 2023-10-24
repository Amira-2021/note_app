import 'package:flutter/material.dart';

class TextNoteContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "title",
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
