import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/theme.dart';

Widget customLoading() {
  return SingleChildScrollView(
    physics: const AlwaysScrollableScrollPhysics(),
    child: Container(
      height: MediaQuery.of(Get.context!).size.height,
      width: MediaQuery.of(Get.context!).size.width,
      alignment: Alignment.center,
      child: const CircularProgressIndicator(color: ThemeColor.removeBg),
    ),
  );
}
