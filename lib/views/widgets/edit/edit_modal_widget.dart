// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../note/custome_button.dart';
import '../add/custome_text_feild.dart';

class EditModalWidget extends StatelessWidget {
  final Function? function;
  EditModalWidget({
    super.key,
    this.function,
  });
  final titleController = TextEditingController();
  final datailController = TextEditingController();
  // NoteModel? noteModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: SingleChildScrollView(
          child: EditTextForm(
        function: function,
      )),
    );
  }
}

class EditTextForm extends StatefulWidget {
  final Function? function;
  const EditTextForm({super.key, this.function});
  @override
  _EditTextFormState createState() => _EditTextFormState();
}

class _EditTextFormState extends State<EditTextForm> {
  var titleController = TextEditingController();
  var subtitleController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
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
            controller: subtitleController,
            onSave: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              title: "Save",
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              })
        ],
      ),
    );
  }
}
