import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
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

  Widget buildOptionButton(int i) {
    const List<IconData> iconOptionButton = [
      Icons.create_rounded,
      Icons.question_mark_rounded,
      Icons.settings_rounded
    ];

    return IconButton(
        iconSize: 30,
        color: Colors.black38,
        onPressed: () {},
        icon: Icon(iconOptionButton[i]));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        buildImage(),
        Positioned(
          bottom: -10,
          right: 0,
          child: buildOptionButton(0),
        ),
        Positioned(
          top: -10,
          right: 0,
          child: buildOptionButton(1),
        ),
        Positioned(
          bottom: -12,
          left: -5,
          child: buildOptionButton(2),
        ),
      ]),
    );
  }
}
