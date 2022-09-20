import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbti/screens/stereomedium/medcontroller/medquestion_controller.dart';

import 'package:mbti/screens/stereomedium/medcomponents/medbody.dart';

class QuizMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediumQuestionController _controller = Get.put(MediumQuestionController());
    return Scaffold(
      body: Body(),
    );
  }
}