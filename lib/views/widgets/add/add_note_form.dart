import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/read_cubit/notes_cubit.dart';
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
  int? color;
  List<int> colorList = [
    0xFFFFFFFF,
    0xFFcffd65,
    0xFFb0d4bc,
    0xFFaa97d6,
    0xFFb0d472,
    0xFFf6e3b8,
    0xFFc597e3,
    0xFFf8aee5,
    0xFFb4efe0,
    0xFF438be0,
    0xFFcf7c65,
  ];
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
            onSave: (value) {
              title = value;
            },
          ),
          CustomTextField(
            title: "Content",
            height: 250,
            color: Colors.black,
            lines: 6,
            onSave: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 90,
            color: Colors.grey.shade700,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  onTap: () {
                    color = colorList[index];
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(colorList[index]),
                  ),
                ),
              ),
              itemCount: colorList.length,
            ),
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
                      color: color!,
                      date: DateFormat.yMMMd()
                          .add_jm()
                          .format(DateTime.now())
                          .toString(),
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
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
