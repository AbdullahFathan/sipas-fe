import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';

class OrangeButton extends StatelessWidget {
  final String contentText;
  final void Function()? onPressedFunc;
  const OrangeButton({
    Key? key,
    required this.contentText,
    this.onPressedFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunc,
      style: ElevatedButton.styleFrom(
          backgroundColor: orangeColor,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          minimumSize: const Size(280, 48),
          maximumSize: const Size(328, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          )),
      child: Text(
        contentText,
        style: headline(
          colorFont: Colors.white,
          sizeFont: 14,
        ),
      ),
    );
  }
}
