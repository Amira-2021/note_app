import 'package:flutter/material.dart';

class CustomeAppBarIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  const CustomeAppBarIcon({super.key, required this.icon, this.onTap});
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
        onPressed: onTap,
        icon: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
