import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_search_icon.dart';

class CustomeAppBar extends StatelessWidget {
  String title;
  IconData iconData;

  CustomeAppBar({required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        CustomeAppBarIcon(icon: iconData),
      ],
    );
  }
}
