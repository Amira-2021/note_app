import 'package:flutter/material.dart';
import 'note_view_body.dart';
import '../add/show_modal_widget.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            context: context,
            builder: (context) => const ShowModalWidget(),
          );
        },
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
