import 'package:flutter/material.dart';
import 'package:your_little_helper_app/model/user.dart';
import 'package:your_little_helper_app/utils/user_preferences.dart';
import 'package:your_little_helper_app/widgets/appbar_widget.dart';
import 'package:your_little_helper_app/widgets/profile_widget.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
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
            ],
          ),
        ),
      );
}
