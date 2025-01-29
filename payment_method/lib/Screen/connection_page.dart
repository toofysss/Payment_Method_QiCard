import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import '../Controllers/Connection/connection_controller.dart';
import '../Design/custom_button.dart';
import '../Design/custom_textfield.dart';
import '../constant/asset.dart';
import '../constant/theme.dart';

class ConnectionPage extends StatelessWidget {
  const ConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ConnectionController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///////////////////// Port + Connection Input //////////////////////////////
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: textField(
                          onTap: () => controller.changeIndex(0),
                          controller: controller.connectionLink,
                          hint: "Payment_Amount".tr,
                        ),
                      ),
                      if (controller.data.formUrl != null)
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            style: const ButtonStyle(
                                overlayColor:
                                    WidgetStatePropertyAll(Colors.transparent)),
                            onPressed: () => controller.checkPayment(),
                            icon: const Icon(
                              HugeIcons.strokeRoundedCheckmarkBadge01,
                              size: 30,
                              color: ThemeColor.completeBg,
                            ),
                          ),
                        )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        ///////////////////// Number 1 2 3 Input //////////////////////////////

                        Row(
                          children: [
                            customButton(
                                onTap: () => controller.setValue("3"),
                                title: "3"),
                            const SizedBox(width: 5),
                            customButton(
                                onTap: () => controller.setValue("2"),
                                title: "2"),
                            const SizedBox(width: 5),
                            customButton(
                                onTap: () => controller.setValue("1"),
                                title: "1"),
                          ],
                        ),
                        const SizedBox(height: 10),

                        ///////////////////// Number 4 5 6 Input //////////////////////////////

                        Row(
                          children: [
                            customButton(
                                onTap: () => controller.setValue("6"),
                                title: "6"),
                            const SizedBox(width: 5),
                            customButton(
                                onTap: () => controller.setValue("5"),
                                title: "5"),
                            const SizedBox(width: 5),
                            customButton(
                                onTap: () => controller.setValue("4"),
                                title: "4"),
                          ],
                        ),
                        const SizedBox(height: 10),

                        ///////////////////// Number 7 8 9 Input //////////////////////////////

                        Row(
                          children: [
                            customButton(
                                onTap: () => controller.setValue("9"),
                                title: "9"),
                            const SizedBox(width: 5),
                            customButton(
                                onTap: () => controller.setValue("8"),
                                title: "8"),
                            const SizedBox(width: 5),
                            customButton(
                                onTap: () => controller.setValue("7"),
                                title: "7"),
                          ],
                        ),
                        const SizedBox(height: 10),

                        ///////////////////// Number . 0 Delete Input //////////////////////////////

                        Row(
                          children: [
                            customButton(
                              onTap: () => controller.setValue("."),
                              title: ".",
                            ),
                            const SizedBox(width: 5),
                            customButton(
                                onTap: () => controller.setValue("0"),
                                title: "0"),
                            const SizedBox(width: 5),
                            customButton(
                              size: 24,
                              onTap: () => controller.removeValue(),
                              title: "Delete".tr,
                              forceColor: ThemeColor.removeForceColor,
                              bg: ThemeColor.removeBg,
                            ),
                          ],
                        ),

                        /////////////////////////// Confirm Button ///////////////////////
                        GestureDetector(
                          onTap: () => controller.saveButton(),
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ThemeColor.completeBg),
                            child: Text(
                              "Save".tr,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ThemeColor.completeForceColor,
                                  fontFamily: Font.style.fontFamily,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
