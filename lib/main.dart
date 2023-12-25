
import 'package:flutter/material.dart';
import 'package:flutter_test_animation/pages/profile_page.dart';
import 'package:flutter_test_animation/pages/profile_page_controller.dart';
import 'package:flutter_test_animation/utils/list_of_profiles.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  Get.lazyPut(() => ProfileController(),);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyView(),
    );
  }
}

