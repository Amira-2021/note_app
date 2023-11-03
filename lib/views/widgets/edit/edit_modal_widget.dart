// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import '../note/custome_button.dart';
import '../add/custome_text_feild.dart';

class EditModalWidget extends StatelessWidget {
  final NoteModel model;
  const EditModalWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      child: SingleChildScrollView(
          child: EditTextForm(
        model: model,
      )),
    );
  }
}

class EditTextForm extends StatefulWidget {
  final Function? function;
  final NoteModel model;
  const EditTextForm({
    super.key,
    this.function,
    required this.model,
  });
  @override
  _EditTextFormState createState() => _EditTextFormState();
}

class _EditTextFormState extends State<EditTextForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  String date = "155512";
  int color = 0xFFFFFFFF;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          title: widget.model.title,
          height: 50,
          color: Colors.blue,
          lines: 1,
          onChange: (value) {
            title = value;
          },
        ),
        CustomTextField(
          title: widget.model.subtitle,
          height: 250,
          color: Colors.black,
          lines: 6,
          onChange: (value) {
            subtitle = value;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
            title: "Save",
            onTap: () {
              widget.model.title = title ?? widget.model.title;
              widget.model.subtitle = subtitle ?? widget.model.subtitle;
              widget.model.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            })
      ],
    );
  }
}
