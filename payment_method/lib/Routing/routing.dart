import 'package:get/get.dart';
import '../Screen/connection_page.dart';
import '../Screen/splash_screen.dart';
import 'approuting.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: '/', page: () => const SplashScreen(), transition: Transition.fade),
  GetPage(
      name: AppRouting.connection,
      page: () => const ConnectionPage(),
      transition: Transition.fade),
];
