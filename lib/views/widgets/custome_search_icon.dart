import 'package:flutter/material.dart';

class CustomeAppBarIcon extends StatelessWidget {
  IconData icon;
  CustomeAppBarIcon({required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
