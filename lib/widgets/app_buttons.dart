import 'package:flutter/material.dart';
import 'package:medicalapp/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  String? text;
  IconData? icon;
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButtons(
      {Key? key,
      this.text = "Hi",
      this.icon,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.borderColor,
      this.isIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: isIcon == true
          ? Center(
              child: Icon(
                icon,
                color: color,
              ),
            )
          : Center(
              child: AppText(
                text: text!,
                color: color,
              ),
            ),
    );
  }
}
