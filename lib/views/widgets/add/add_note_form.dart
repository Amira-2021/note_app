import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import '../note/custome_button.dart';
import 'custome_text_feild.dart';

class NoteTextForm extends StatefulWidget {
  const NoteTextForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteStates>(
            builder: (context, state) {
              return CustomButton(
                title: "Add",
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      color: Colors.blue.value,
                      date: DateTime.now().toString(),
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
