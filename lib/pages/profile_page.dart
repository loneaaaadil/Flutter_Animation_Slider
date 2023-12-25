import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_test_animation/pages/profile_page_controller.dart';
import 'package:flutter_test_animation/utils/list_of_profiles.dart';
import 'package:get/get.dart';

class MyView extends GetView<ProfileController> {
  const MyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Random Profiles'),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.selectedIndex = value;
                },
                children: [
                  Stack(
                    children: List.generate(
                        profileWidgetsfirst.length,
                        (index) => Obx(
                              () => profileWidgetsfirst[index].animate(
                                effects: controller.effectsFrist.value,
                                delay: Duration(
                                    milliseconds: index == 0 || index == 3
                                        ? 500
                                        : index == 1 || index == 4
                                            ?300
                                            : 180),
                              ),
                            )
                        // .then()
                        ),
                  ),
                  Stack(
                    children: List.generate(
                      profileWidgetssecond.length,
                      (index) => Obx(
                        () => profileWidgetssecond[index]
                            .animate(
                                effects: controller.effectsSecond.value,
                                delay: Duration(
                                    milliseconds: index == 0 || index == 3
                                        ? 500
                                        : index == 1 || index == 4
                                            ? 300
                                            : 100))
                            // .then()
                            // .moveX(
                            //   duration: Duration(
                            //       milliseconds: index == 0 || index == 3
                            //           ? 340
                            //           : index == 1 || index == 4
                            //               ? 250
                            //               : 60),
                            // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
