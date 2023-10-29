import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';
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
        child: BlocConsumer<AddNoteCubit, AddNoteStates>(
            listener: (context, state) {
          if (state is AddNoteSuccess) {
            showDialog(
              context: context,
              builder: (context) => Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Text("Success Note Add "),
              ),
            );
          }
          if (state is AddNoteFailure) {
            print("Amira is error found");
          }
        }, builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: NoteTextForm(),
          );
        }),
      ),
    );
  }
}
