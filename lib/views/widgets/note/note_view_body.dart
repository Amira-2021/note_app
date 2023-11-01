import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/delete_cubit.dart';
import 'package:notes_app/cubits/read_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'custome_app_bar.dart';
import 'custome_list_item.dart';

class NoteViewBody extends StatefulWidget {
  NoteViewBody({super.key, this.noteModel});
  NoteModel? noteModel;

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<DeleteCubit, DeleteState>(
            builder: (context, state) {
              return CustomAppBar(
                title: "Note",
                iconData: Icons.delete,
                onTap: OnTap,
              );
            },
          ),
          const Expanded(
            child: CustomeListView(),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void OnTap() {
    BlocProvider.of<DeleteCubit>(context).removeAllNotes();
  }
}
