import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_button.dart';
import 'package:notes_app/views/widgets/custome_note_iem.dart';
import 'package:notes_app/views/widgets/custome_text_feild.dart';
import 'package:notes_app/views/widgets/text_feild.dart';

class ShowModalWidget extends StatelessWidget {
  // NoteModel? noteModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: SingleChildScrollView(
        child: NoteTextForm(),
      ),
    );
  }
}

class NoteTextForm extends StatefulWidget {
  @override
  _NoteTextFormState createState() => _NoteTextFormState();
}

class _NoteTextFormState extends State<NoteTextForm> {
  var titleController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  var datailController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            title: "Title",
            height: 50,
            color: Colors.blue,
            lines: 1,
            controller: titleController,
            onSave: (value) {
              title = value;
            },
          ),
          CustomTextField(
            title: "Content",
            height: 250,
            color: Colors.black,
            lines: 6,
            controller: datailController,
            onSave: (value) {
              subtitle = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            title: "Add",
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
