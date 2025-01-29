import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_method/Design/alert_design.dart';
import 'package:payment_method/Helpers/home_helper.dart';
import 'package:payment_method/Model/create_payment_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../services/services.dart';

class ConnectionController extends GetxController {
  final RxInt index = 0.obs;
  MyServices myServices = Get.put(MyServices());

  final TextEditingController connectionLink = TextEditingController();
  CreatePaymentModel data = CreatePaymentModel();
  changeIndex(int i) {
    index.value = i;
    update();
  }

  setValue(String value) {
    if (index.value == 0) {
      connectionLink.text += value;
    }
  }

  removeValue() {
    if (index.value == 0) {
      connectionLink.clear();
    }
  }

  saveButton() async {
    try {
      data = await HomeHelper.createPayment(double.parse(connectionLink.text));
      var url = Uri.parse(data.formUrl.toString());
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }

      update();
    } catch (e) {
      AlertDesign.errorAlert(e.toString());
    }
  }

  checkPayment() async {
    try {
      var checkPayment = await HomeHelper.checkPayment(data.paymentId);
      if (checkPayment.status == "SUCCESS") {
        AlertDesign.successAlert();
      } else {
        AlertDesign.errorAlert(
            "Payment_Failed".tr + checkPayment.status.toString());
      }
    } catch (e) {
      AlertDesign.errorAlert(e.toString());
    }
  }
}
