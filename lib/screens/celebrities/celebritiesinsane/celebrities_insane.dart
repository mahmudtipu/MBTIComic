import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbti/screens/celebrities/celebritiesinsane/insanecomponents/insanebody.dart';
import 'package:mbti/screens/celebrities/celebritiesinsane/insanecontroller/insanequestion_controller.dart';

class CelebritiesInsane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelInsaneQuestionController _controller = Get.put(CelInsaneQuestionController());
    return Scaffold(
      body: Body(),
    );
  }
}