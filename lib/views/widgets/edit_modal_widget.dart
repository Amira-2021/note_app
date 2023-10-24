import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_text_feild.dart';

class EditModalWidget extends StatelessWidget {
  var titleController = TextEditingController();
  var datailController = TextEditingController();
  // NoteModel? noteModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFeild(
              title: "Title",
              height: 50,
              color: Colors.blue,
              lines: 1,
              controller: titleController,
            ),
            CustomTextFeild(
                title: "Content",
                height: 250,
                color: Colors.black,
                lines: 6,
                controller: datailController),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
