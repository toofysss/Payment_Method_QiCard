import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/services.dart';
import 'approuting.dart';

class Middleware extends GetMiddleware {
  MyServices myServices = Get.put(MyServices());
  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("Home") ==
        AppRouting.homeScreen) {
      return RouteSettings(name: AppRouting.homeScreen);
    }
    return null;
  }
}
