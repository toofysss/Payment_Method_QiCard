// ignore_for_file: deprecated_member_use

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import '../constant/asset.dart';
import '../constant/theme.dart';

Widget customHeaderText(
    {required String title,
    bool isComplete = false,
    required Color color,
    required Color forceColor,
    required double headerSize}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      children: [
        //////////////////// Desh ////////////////////////

        RotatedBox(
          quarterTurns: 45,
          child: HugeIcon(
              icon: HugeIcons.strokeRoundedDish01,
              color: forceColor,
              size: 100),
        ),

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(color: forceColor),
              LayoutBuilder(builder: (context, constraints) {
                double fontSize = constraints.maxWidth * headerSize;

                return Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: color.withOpacity(.32), width: 1),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(5, 5),
                        color: forceColor,
                      )
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: ThemeColor.white.withOpacity(.32),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Spacer(),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                title,
                                style: TextStyle(
                                    fontFamily: Font.style.fontFamily,
                                    fontWeight: FontWeight.w800,
                                    fontSize: fontSize,
                                    color: ThemeColor.white),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                isComplete
                                    ? HugeIcons.strokeRoundedCheckmarkCircle01
                                    : HugeIcons.strokeRoundedClock01,
                                color: ThemeColor.white,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
              Divider(color: forceColor)
            ],
          ),
        ),

        //////////////////// Desh ////////////////////////
        RotatedBox(
            quarterTurns: -45,
            child: HugeIcon(
                icon: HugeIcons.strokeRoundedDish01,
                color: forceColor,
                size: 100)),
      ],
    ),
  );
}
