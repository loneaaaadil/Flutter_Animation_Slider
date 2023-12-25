 import 'package:flutter/material.dart';
import 'package:flutter_test_animation/widgets/circular_profile.dart';
import 'package:get/get.dart';

final List<Widget> profileWidgetsfirst = [
    Positioned(
        left: 30,
        top: Get.height * 0.3,
        child: const BuildRandomProfileWidget(
          radius: 45,
        )),
    Positioned(
        left: 210,
        top: Get.height * 0.25,
        child: const BuildRandomProfileWidget(
          radius: 30,
        )),
    Positioned(
        left: 330,
        top: Get.height * 0.20,
        child: const BuildRandomProfileWidget(
          radius: 70,
        )),
    Positioned(
        left: 30,
        top: Get.height * 0.5,
        child: const BuildRandomProfileWidget(
          radius: 40,
        )),
    Positioned(
        left: 190,
        top: Get.height * 0.43,
        child: const BuildRandomProfileWidget(
          radius: 60,
        )),
    Positioned(
        left: 375,
        top: Get.height * 0.5,
        child: const BuildRandomProfileWidget(
          radius: 50,
        )),
  ];

 final List<Widget> profileWidgetssecond = [
  
   Positioned(
        left: 30,
        top: Get.height * 0.23,
        child: const BuildRandomProfileWidget(
          radius: 70,
        )),
    Positioned(
        left: 210,
        top: Get.height * 0.25,
        child: const BuildRandomProfileWidget(
          radius: 50,
        )),
    Positioned(
        left: 360,
        top: Get.height * 0.20,
        child: const BuildRandomProfileWidget(
          radius: 40,
        )),
    Positioned(
        left: 50,
        top: Get.height * 0.5,
        child: const BuildRandomProfileWidget(
          radius: 30,
        )),
    Positioned(
        left: 150,
        top: Get.height * 0.43,
        child: const BuildRandomProfileWidget(
          radius: 60,
        )),
    Positioned(
        left: 335,
        top: Get.height * 0.38,
        child: const BuildRandomProfileWidget(
          radius: 45,
        )),
  ].reversed.toList();
