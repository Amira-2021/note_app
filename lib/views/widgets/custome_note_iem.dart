import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_view.dart';
import 'package:notes_app/views/widgets/edit_view_body.dart';

class CustomeNoteItem extends StatelessWidget {
  Color? colors;
  // NoteModel noteModel;
  CustomeNoteItem({
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditView()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Amira",
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Engineer Computer science",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.5)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, right: 24),
              child: Text(
                "24/10/2023",
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.4)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoteModel {
  String title;
  String content;
  NoteModel({required this.title, required this.content});
}
