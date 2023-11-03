import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.height,
    required this.title,
    required this.color,
    required this.lines,
    this.onSave,
    this.onChange,
  });
  final double height;
  final String title;
  final Color color;
  final int lines;
  final void Function(String?)? onSave;
  void Function(String?)? onChange;

  // CustomTextField(this.height, this.title, this.color, this.lines, this.onSave,
  //      this.controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextFormField(
        maxLines: lines,
        textInputAction: TextInputAction.next,
        cursorColor: const Color(0xff62FCD7),
        onSaved: onSave,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "Field is required";
          } else {
            return null;
          }
        },
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(fontSize: 22),
          border: buildBorder(),
          focusedBorder: buildBorder(
            const Color(0xff62FCD7),
          ),
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
