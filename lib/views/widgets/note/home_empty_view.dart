import 'package:flutter/material.dart';
import 'package:notes_app/views/constant/colors.dart';
import 'package:notes_app/views/widgets/note/custome_app_bar.dart';

class HomeEmptyView extends StatelessWidget {
  const HomeEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: 350,
              child: Image.asset(
                "assets/img/empty.png",
                fit: BoxFit.fill,
              ),
            ),
            const Text(
              "Create your first Note !",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
