import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_app_bar.dart';
import 'package:notes_app/views/widgets/edit_modal_widget.dart';

class EditViewBody extends StatefulWidget {
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
          SizedBox(
            height: 50,
          ),
          CustomeAppBar(
              title: "Edit Note", iconData: Icons.check, onTap: OnClickCheck),
          Expanded(
            child: EditModalWidget(function: OnClickCheck),
          ),
        ],
      ),
    );
  }

  void OnClickCheck() {}
}
