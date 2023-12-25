import 'package:flutter/material.dart';
import 'package:flutter_test_animation/utils/color.dart';

class BuildRandomProfileWidget extends StatelessWidget {
  final double radius;
  const BuildRandomProfileWidget({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: randomColor()
    );


  }
}