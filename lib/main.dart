
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/modules/intro/intro_binding.dart';
import 'package:getx_api/modules/intro/intro_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const IntroScreen(),
      initialBinding: IntroBinding(),
    ),
  );
}