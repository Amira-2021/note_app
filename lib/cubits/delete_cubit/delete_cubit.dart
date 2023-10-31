import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/constant/colors.dart';

part 'delete_state.dart';

class DeleteCubit extends Cubit<DeleteState> {
  DeleteCubit() : super(DeleteInitial());
  bool isDelete = false;
  removeAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    notesBox.clear();
    isDelete = true;
  }

  removeOnlyNote(int index) async {
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    await notesBox.delete(index);
  }
}
