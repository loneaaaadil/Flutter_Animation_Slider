import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  PageController pageController = PageController();
  // PageController pageControllers=PageController();
  var pageOffset = 0.0.obs;
  int selectedIndex = 0;
  //first page effect
  var effectsFrist = RxList<Effect>([
    const ShakeEffect(),
    const ThenEffect(),
    MoveEffect(
      begin: Offset(-Get.width, 0),
    ),
  ]).obs;
  //second effect
  var effectsSecond = RxList<Effect>([
    const ShakeEffect(),
    const ThenEffect(),
    MoveEffect(
      begin: Offset(-Get.width, 0),
    ),
  ]).obs;

  // var effects= RxList<List<Effect>>().obs;
  // List<Effect> effect=[];
  @override
  void onInit() {
    pageController.addListener(() {
      if (pageController.position.haveDimensions) {
        pageOffset(pageController.page! - selectedIndex);
        // print(pageController.offset);
        effectsFrist.value.assignAll([
          const ThenEffect(),
          MoveEffect(
            begin: Offset(-Get.width, 0),
          )
        ]);
      }
    });

pageController.addListener(() {
      if (pageController.position.haveDimensions) {
        pageOffset(pageController.page! - selectedIndex);
        // print(pageController.offset);
        effectsSecond.value.assignAll([
          const ThenEffect(),
          MoveEffect(
            begin: Offset(-Get.width, 0),
          )
        ]);
      }
    });


    super.onInit();
  }
//     _listener() {
//       if(pageController.position.haveDimensions){

// pageOffset(pageController.page!-selectedIndex);
//       }
  //   if (pageController.position.userScrollDirection == ScrollDirection.reverse) {
  //    effectsFrist.value.assignAll([
  //        const ShakeEffect(),
  //  ThenEffect(),
  //   MoveEffect(end: Offset(-Get.width, 0),)
  //    ]);
  //   } else {
  //     print('swiped to left');
  //   }
  // }
}
