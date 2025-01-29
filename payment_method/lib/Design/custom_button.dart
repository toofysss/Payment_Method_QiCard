import 'package:flutter/material.dart';
import '../constant/asset.dart';
import '../constant/theme.dart';

Widget customButton(
    {Function()? onTap,
    String title = "",
    double size = 32,
    Color bg = ThemeColor.btnBg,
    Color forceColor = ThemeColor.black}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: bg),
        child: Text(
          title,
          style: TextStyle(
              fontSize: size,
              color: forceColor,
              fontFamily: Font.style.fontFamily,
              fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}
