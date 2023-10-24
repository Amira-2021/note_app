import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_app_bar.dart';
import 'package:notes_app/views/widgets/custome_list_item.dart';
import 'package:notes_app/views/widgets/custome_note_iem.dart';

class NoteViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomeAppBar(),
          Expanded(
            child: CustomeListView(),
          ),
        ],
      ),
    );
  }
}
