import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_view_body.dart';
import 'package:notes_app/views/widgets/show_modal_widget.dart';

class NoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            context: context,
            builder: (context) => ShowModalWidget(),
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
