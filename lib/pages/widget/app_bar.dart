import 'package:flutter/material.dart';

import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';

AppBar customAppBar(BuildContext context, String text) => AppBar(
      backgroundColor: whiteColor,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: blackColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        text,
        style: heading1(sizeFont: 16),
      ),
      centerTitle: true,
    );
