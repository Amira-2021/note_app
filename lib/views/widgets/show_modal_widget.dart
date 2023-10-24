import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/text_feild.dart';

class ShowModalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFeildNote(),
          TextFeildNote(
            height: 250,
          ),
        ],
      ),
    );
  }
}
