import 'package:flutter/material.dart';
import 'package:notes_app/views/constant/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool isLoading;

  const CustomButton({
    super.key,
    this.isLoading = false,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : Text(
                    title,
                    style: const TextStyle(fontSize: 22, color: Colors.black),
                  ),
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
