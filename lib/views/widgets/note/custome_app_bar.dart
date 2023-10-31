import 'package:flutter/material.dart';
import 'custome_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback? onTap;

  const CustomAppBar(
      {super.key, required this.title, required this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 35,
          ),
        ),
        CustomeAppBarIcon(icon: iconData, onTap: onTap),
      ],
    );
  }
}
