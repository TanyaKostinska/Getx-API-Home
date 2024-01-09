import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/modules/intro/intro_controller.dart';
import 'package:lottie/lottie.dart';

class IntroScreen extends GetView<IntroController> {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.number.value = 1;

    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animations/lottie.json'),
      ),
    );
  }
}
