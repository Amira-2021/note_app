import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_note_iem.dart';

class CustomeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> color = [
      const Color(0xffFFCC80),
      Colors.green.shade200,
      Colors.red.shade200,
      Colors.blue.shade200,
      Colors.grey.shade200,
      Colors.yellow.shade200,
    ];
    return ListView.separated(
      itemBuilder: (context, index) => CustomeNoteItem(
        colors: color[index],
      ),
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(),
      ),
      itemCount: 6,
    );
  }
}
