import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbti/screens/stereohard/hardcontroller/hardquestion_controller.dart';

import 'package:mbti/screens/stereohard/hardcomponents/hardbody.dart';

class QuizHard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HardQuestionController _controller = Get.put(HardQuestionController());
    return Scaffold(
      body: Body(),
    );
  }
}