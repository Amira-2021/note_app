import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_app_bar.dart';
import 'package:notes_app/views/widgets/custome_list_item.dart';
import 'package:notes_app/views/widgets/custome_note_iem.dart';
import 'package:notes_app/views/widgets/search_view.dart';

class NoteViewBody extends StatefulWidget {
  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomeAppBar(title: "Note", iconData: Icons.search, onTap: OnTap),
          Expanded(
            child: CustomeListView(),
          ),
        ],
      ),
    );
  }

  void OnTap() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchView()));
  }
}
