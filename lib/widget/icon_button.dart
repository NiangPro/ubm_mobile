// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  final String title;
  final double texteSize;

  CircleIconButton(
      this.iconData, this.iconColor, this.iconSize, this.title, this.texteSize,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          child: SizedBox(
            width: 60,
            height: 40,
            child: Column(
              children: [
                Icon(iconData, size: iconSize, color: iconColor),
                SizedBox(height: 5.0),
                Text(
                  title,
                  style: TextStyle(color: iconColor, fontSize: texteSize),
                )
              ],
            ),
          ),
        ));
  }
}
