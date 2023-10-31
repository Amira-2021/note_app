import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/delete_cubit/delete_cubit.dart';
import 'package:notes_app/cubits/read_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/note/search_view.dart';
import 'custome_note_iem.dart';

class CustomeListView extends StatefulWidget {
  const CustomeListView({super.key});

  @override
  State<CustomeListView> createState() => _CustomeListViewState();
}

class _CustomeListViewState extends State<CustomeListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return notes.isEmpty
            ? const SearchView()
            : BlocBuilder<DeleteCubit, DeleteState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => CustomeNoteItem(
                        model: notes[index],
                      ),
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(),
                      ),
                      itemCount: notes.length,
                    ),
                  );
                },
              );
      },
    );
  }
}
