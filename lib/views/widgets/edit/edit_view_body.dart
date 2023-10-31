import 'package:flutter/material.dart';
import '../note/custome_app_bar.dart';
import 'edit_modal_widget.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key});

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
              title: "Edit Note", iconData: Icons.check, onTap: onclickcheck),
          Expanded(
            child: EditModalWidget(function: onclickcheck),
          ),
        ],
      ),
    );
  }

  void onclickcheck() {
    debugPrint("clicked");
  }
}
