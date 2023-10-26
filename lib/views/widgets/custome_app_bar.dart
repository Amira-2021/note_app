import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_search_icon.dart';

class CustomeAppBar extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback? onTap;

  const CustomeAppBar(
      {super.key, required this.title, required this.iconData, this.onTap});

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
        CustomeAppBarIcon(icon: iconData, onTap: onTap),
      ],
    );
  }
}
