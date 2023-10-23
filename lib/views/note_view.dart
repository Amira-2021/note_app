import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
    );
  }
}
