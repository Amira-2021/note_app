import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/read_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/note/home_empty_view.dart';
import 'custome_note_iem.dart';

class CustomeListView extends StatelessWidget {
  const CustomeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notesModel =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return notesModel.isEmpty
            ? const HomeEmptyView()
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => Dismissible(
                    key: ValueKey(index),
                    background: Container(
                      color: Colors.red,
                      height: 100,
                      child: const Icon(Icons.delete),
                    ),
                    direction: DismissDirection.endToStart,
                    confirmDismiss: (value) {
                      return showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Confirm delete"),
                          content: Text("Are you sure you want to delete"),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: const Text("Cancel"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: const Text("Delete"),
                            ),
                          ],
                        ),
                      );
                    },
                    onDismissed: (DismissDirection direction) {
                      if (direction == DismissDirection.endToStart) {
                        notesModel.removeAt(index).delete();
                      }
                    },
                    child: CustomeNoteItem(
                      model: notesModel[index],
                    ),
                  ),
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(),
                  ),
                  itemCount: notesModel.length,
                ),
              );
      },
    );
  }
}
