import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  const iconTheme = CupertinoIcons.moon_stars;
  const iconExit = Icons.exit_to_app;

  return AppBar(
    leading: IconButton(
        color: Colors.black, onPressed: () {}, icon: const Icon(iconExit)),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
          color: Colors.black, onPressed: () {}, icon: const Icon(iconTheme)),
    ],
  );
}
