import 'package:flutter/material.dart';
import 'package:your_little_helper_app/model/user.dart';
import 'package:your_little_helper_app/utils/user_preferences.dart';
import 'package:your_little_helper_app/widgets/appbar_widget.dart';
import 'package:your_little_helper_app/widgets/profile_widget.dart';
import 'package:your_little_helper_app/widgets/textfield_widget.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  User user = UserPreferences.myUser;

  ButtonStyle get styleSaveButton => ElevatedButton.styleFrom(
        primary: Colors.indigo.shade300,
        onPrimary: Colors.white,
        shadowColor: Colors.indigo.shade100,
        elevation: 6,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        textStyle: const TextStyle(fontSize: 30),
        minimumSize: const Size(130, 60),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: Column(
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 40),
            TextFieldWidget(
              maxLines: 1,
              label: "Full name",
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 40),
            TextFieldWidget(
              maxLines: 1,
              label: "Email",
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              style: styleSaveButton,
              onPressed: () {}, //=> //submit(),
              child: const Text("Save"),
            ),
          ],
        ),
      );
}
