import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import 'Routing/routing.dart';
import 'Controllers/Language/locale_controller.dart';
import 'constant/theme.dart';
import 'Translation/translation.dart';
import 'services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LocalController(),
      builder: (controller) {
        return ToastificationWrapper(
          child: GetMaterialApp(
            translations: MyTransition(),
            locale: controller.language,
            themeMode: ThemeMode.light,
            theme: theme(context),
            debugShowCheckedModeBanner: false,
            getPages: routes,
          ),
        );
      },
    );
  }
}
