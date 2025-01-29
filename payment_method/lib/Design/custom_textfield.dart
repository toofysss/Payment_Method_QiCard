// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/asset.dart';
import '../constant/theme.dart';

Widget textField(
    {required TextEditingController controller,
    Function()? onTap,
    required String hint}) {
  return SizedBox(
    child: TextFormField(
      onTap: onTap,
      readOnly: true,
      textDirection: TextDirection.ltr,
      controller: controller,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      style: TextStyle(
          letterSpacing: 0,
          fontWeight: FontWeight.w700,
          fontFamily: Font.style.fontFamily,
          fontSize: 24,
          color: ThemeColor.black),
      decoration: InputDecoration(
          fillColor: ThemeColor.btnBg,
          filled: true,
          hintText: hint.tr,
          hintStyle: TextStyle(
              backgroundColor: Colors.transparent,
              letterSpacing: 0,
              fontWeight: FontWeight.w700,
              fontStyle: Font.style.fontStyle,
              fontSize: 24,
              color: ThemeColor.black.withOpacity(.9)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10))),
    ),
  );
}
