import 'package:get/get.dart';
import '../../Routing/approuting.dart';
import '../../services/services.dart';

class SplashScreenController extends GetxController {
  MyServices myServices = Get.put(MyServices());

  @override
  void onInit() {
    openPage();
    super.onInit();
  }

  openPage() async {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(AppRouting.connection),
    );
  }
}
