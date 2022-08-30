import 'package:flutter/material.dart';
import '../pages/edit_page.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  Widget buildImage() {
    final image = AssetImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 200,
          height: 200,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  Widget buildOptionButton(BuildContext context, int index) {
    const List<IconData> iconOptionButton = [
      Icons.create_rounded,
      Icons.question_mark_rounded,
      Icons.settings_rounded,
    ];

    const List<Widget> page = [
      EditPage(),
      // ReferencePage(),
      // SettingsPage(),
    ];

    void _navigateToNextPage(BuildContext context, int index) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => page[index]));
    }

    return IconButton(
        iconSize: 30,
        color: Colors.black38,
        onPressed: () => _navigateToNextPage(context, index),
        icon: Icon((isEdit && index == 0)
            ? Icons.add_a_photo_rounded
            : iconOptionButton[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        buildImage(),
        Positioned(
          bottom: -10,
          right: -5,
          child: buildOptionButton(context, 0),
        ),
        Positioned(
          top: -10,
          right: 0,
          child: buildOptionButton(context, 1),
        ),
        Positioned(
          bottom: -12,
          left: -5,
          child: buildOptionButton(context, 2),
        ),
      ]),
    );
  }
}
