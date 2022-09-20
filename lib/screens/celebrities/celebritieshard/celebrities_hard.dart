import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbti/screens/celebrities/celebritieshard/hardcomponents/hardbody.dart';
import 'package:mbti/screens/celebrities/celebritieshard/hardcontroller/hardquestion_controller.dart';

class CelebritiesHard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelHardQuestionController _controller = Get.put(CelHardQuestionController());
    return Scaffold(
      body: Body(),
    );
  }
}