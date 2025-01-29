import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';
import '../constant/theme.dart';
import '../constant/asset.dart';

class AlertDesign {
  static Future successAlert() async {
    toastification.show(
      dismissDirection: DismissDirection.vertical,
      context: Get.context,
      type: ToastificationType.success,
      style: ToastificationStyle.minimal,
      autoCloseDuration: const Duration(seconds: 5),
      description: RichText(
        text: TextSpan(
          text: 'success'.tr,
          style: TextStyle(
            fontStyle: Font.style.fontStyle,
            fontWeight: FontWeight.w500,
            color: ThemeColor.green,
            letterSpacing: 0,
          ),
        ),
      ),
      alignment: Alignment.topCenter,
      direction: TextDirection.ltr,
      animationDuration: const Duration(milliseconds: 300),
      icon: const Icon(Icons.check),
      showIcon: true,
      primaryColor: ThemeColor.green,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x07000000),
          blurRadius: 16,
          offset: Offset(0, 16),
          spreadRadius: 0,
        )
      ],
      showProgressBar: true,
      progressBarTheme: const ProgressIndicatorThemeData(
          linearMinHeight: 2,
          color: ThemeColor.white,
          linearTrackColor: ThemeColor.green),
      closeOnClick: false,
      pauseOnHover: false,
      dragToClose: true,
    );
  }

  static Future errorAlert(String msg) async {
    toastification.show(
      dismissDirection: DismissDirection.vertical,
      context: Get.context,
      type: ToastificationType.error,
      style: ToastificationStyle.minimal,
      autoCloseDuration: const Duration(seconds: 5),
      description: RichText(
        text: TextSpan(
          text: msg,
          style: TextStyle(
            fontStyle: Font.style.fontStyle,
            fontWeight: FontWeight.w500,
            color: ThemeColor.red,
            letterSpacing: 0,
          ),
        ),
      ),
      alignment: Alignment.topCenter,
      direction: TextDirection.ltr,
      animationDuration: const Duration(milliseconds: 300),
      icon: const Icon(Icons.warning),
      showIcon: true,
      primaryColor: ThemeColor.red,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x07000000),
          blurRadius: 16,
          offset: Offset(0, 16),
          spreadRadius: 0,
        )
      ],
      showProgressBar: true,
      progressBarTheme: const ProgressIndicatorThemeData(
          linearMinHeight: 2,
          color: ThemeColor.white,
          linearTrackColor: ThemeColor.red),
      closeOnClick: false,
      pauseOnHover: false,
      dragToClose: true,
    );
  }

  static loadingAlert() {
    showDialog(
      barrierDismissible: false,
      context: Get.context!,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          insetPadding: const EdgeInsets.all(100),
          contentPadding: const EdgeInsets.all(0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          icon: Center(
              child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor)),
        );
      },
    );
  }
}
