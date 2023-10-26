import 'package:flutter/material.dart';
import 'package:notes_app/views/constant/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
// showDialog(
//   context: context,
//   builder: (context) => Center(
//     child: Container(
//       width: 250,
//       height: 250,
//       color: Colors.white,
//       child: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.check_circle,
//               color: kPrimaryColor,
//               size: 100,
//             ),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Text(
//                 "Done",
//                 style: TextStyle(color: Colors.black, fontSize: 20),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ),
// );
