import 'package:flutter/material.dart';

class ThemeColor {
  static const Color bg = Colors.white;
  static const Color bg2 = Color(0xFFBDBDBC);
  static const Color black = Color(0xFF000000);

  static const Color unselectTabColor = Colors.black;
  static const Color redyForceColor = Colors.white;
  static const Color redyBg = Colors.green;
  static const Color completeForceColor = Colors.white;
  static const Color completeBg = Color(0xff1e7ce8);
  static const Color border = Color(0xff1e7ce8);
  static const Color removeBg = Colors.red;
  static const Color removeForceColor = Colors.white;
  static const Color btnBg = Color.fromRGBO(224, 224, 224, 1);

  static const Color red = Colors.red;
  static const Color white = Color(0xFFFFFFFF);
  static const Color green = Colors.green;
  static const Color grey = Color(0xff7f7f7f);
}

ThemeData theme(BuildContext context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: ThemeColor.bg,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: ThemeColor.bg),
    highlightColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
  );
}
