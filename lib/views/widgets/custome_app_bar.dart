import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_search_icon.dart';

class CustomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Notes",
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        CustomeSearchIcon(),
      ],
    );
  }
}
