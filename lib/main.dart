import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/views/constant/colors.dart';
import 'package:notes_app/views/note_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: kPrimaryColor),
      ),
      home: NoteView(),
    );
  }
}
