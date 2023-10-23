import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          CustomeAppBar(),
        ],
      ),
    );
  }
}
