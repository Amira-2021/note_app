import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_text_feild.dart';
import 'package:notes_app/views/widgets/text_feild.dart';

class ShowModalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: Column(
        children: [
          CustomeTextFeild(
              title: "title", height: 50, color: Colors.blue, lines: 1),
          CustomeTextFeild(
              title: "detail", height: 250, color: Colors.black, lines: 6),

        ],
      ),
    );
  }
}
