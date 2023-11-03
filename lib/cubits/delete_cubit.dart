import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/constant/colors.dart';

part 'delete_state.dart';

class DeleteCubit extends Cubit<DeleteState> {
  DeleteCubit() : super(DeleteInitial());
  removeAllNotes() {
    var notes = Hive.box<NoteModel>(kNoteBox);
    notes.clear();
    emit(DeleteSuccess());
  }
}
