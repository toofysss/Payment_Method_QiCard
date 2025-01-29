import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../Controllers/SplashScreen/splash_screen_controller.dart';
import '../constant/asset.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashScreenController(),
      builder: (context) {
        return Scaffold(
          //////////////// Images  ////////////////

          body: Center(
            child: Lottie.asset(Images.splash, height: 150),
          ),
        );
      },
    );
  }
}
