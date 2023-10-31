import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_cubit/add_note_cubit.dart';
import 'add_note_form.dart';

class ShowModalWidget extends StatelessWidget {
  const ShowModalWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child:
          BlocConsumer<AddNoteCubit, AddNoteStates>(listener: (context, state) {
        if (state is AddNoteSuccess) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 300,
                height: 300,
                child: const Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.check,
                        size: 50,
                        color: Colors.white,
                      ),
                      radius: 60,
                      backgroundColor: Colors.green,
                    ),
                    Text(
                      "Done",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                )),
              ),
            ),
          );
        }
        if (state is AddNoteFailure) {
          debugPrint("Amira  $AddNoteFailure");
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 40,
              ),
              child: NoteTextForm(),
            ),
          ),
        );
      }),
    );
  }
}
