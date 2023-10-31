import 'package:flutter/material.dart';
import '../edit/edit_view.dart';

class CustomeNoteItem extends StatelessWidget {
  final Color colors;
  // NoteModel noteModel;
  const CustomeNoteItem({
    super.key,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const EditView()));
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
              title: const Text(
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
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 24),
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
