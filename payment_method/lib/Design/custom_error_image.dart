// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

import '../constant/asset.dart';
import '../constant/theme.dart';

Widget customError() {
  return Container(
    height: MediaQuery.of(Get.context!).size.height,
    width: MediaQuery.of(Get.context!).size.width,
    alignment: Alignment.center,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ThemeColor.removeBg.withOpacity(0.09),
          ),
          padding: const EdgeInsets.all(32),
          child: const Icon(
            HugeIcons.strokeRoundedAlert01,
            color: ThemeColor.removeBg,
            size: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Error".tr,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ThemeColor.black.withOpacity(.6),
                letterSpacing: -0.24,
                fontFamily: Font.style.fontFamily),
          ),
        )
      ],
    ),
  );
}
