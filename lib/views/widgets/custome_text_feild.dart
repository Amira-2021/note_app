import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_note_iem.dart';

class CustomTextFeild extends StatelessWidget {
  double height;
  String title;
  Color color;
  int lines;
  TextEditingController controller;
  CustomTextFeild(
      {required this.height,
      required this.title,
      required this.color,
      required this.controller,
      required this.lines});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        maxLines: lines,
        textInputAction: TextInputAction.next,
        cursorColor: Color(0xff62FCD7),
        controller: controller,
        onSubmitted: (input) {
          input = controller.text;
          // noteModel.title = input;
        },
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(fontSize: 22),
          border: buildBorder(),
          focusedBorder: buildBorder(Color(0xff62FCD7)),
          enabledBorder: buildBorder(),
          disabledBorder: buildBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
  );
}
