import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../services/services.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  setLanguage(String lang) {
    language = Locale(lang);
  }

  getlang() async {
    String lang = myServices.sharedPreferences.getString("language") ?? "";
    lang.isNotEmpty ? setLanguage(lang) : setLanguage("ar");
  }

  @override
  void onInit() {
    getlang();
    super.onInit();
  }
}
