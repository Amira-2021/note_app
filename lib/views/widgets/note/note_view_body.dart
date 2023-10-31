import 'package:flutter/material.dart';
import 'custome_app_bar.dart';
import 'custome_list_item.dart';
import 'search_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(title: "Note", iconData: Icons.search, onTap: OnTap),
          const Expanded(
            child: CustomeListView(),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void OnTap() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SearchView()));
  }
}
