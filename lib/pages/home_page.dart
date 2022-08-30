import 'package:flutter/material.dart';
import 'package:your_little_helper_app/model/user.dart';
import 'package:your_little_helper_app/utils/user_preferences.dart';
import 'package:your_little_helper_app/widgets/appbar_widget.dart';
import 'package:your_little_helper_app/widgets/profile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> textMenuButton = ["Plans", "Ration", "Diary", "Notice"];
  final user = UserPreferences.myUser;

  ButtonStyle get styleMenu => ElevatedButton.styleFrom(
        primary: Colors.indigo.shade300,
        onPrimary: Colors.white,
        shadowColor: Colors.indigo.shade100,
        elevation: 6,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        textStyle: const TextStyle(fontSize: 30),
        minimumSize: const Size(200, 60),
      );

  Widget buildName(User user) => Text(
        user.name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      );

  Widget buildMenuButton(int index) => ElevatedButton(
        style: styleMenu,
        onPressed: () {},
        child: Text(textMenuButton[index]),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {},
            ),
            const SizedBox(height: 15),
            buildName(user),
            const SizedBox(height: 40),
            buildMenuButton(0),
            const SizedBox(height: 10),
            buildMenuButton(1),
            const SizedBox(height: 10),
            buildMenuButton(2),
            const SizedBox(height: 10),
            buildMenuButton(3),
          ],
        ),
      ),
    );
  }
}
