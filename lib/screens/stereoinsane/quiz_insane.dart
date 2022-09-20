import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbti/screens/stereoinsane/insanecontroller/insanequestion_controller.dart';

import 'package:mbti/screens/stereoinsane/insanecomponents/insanebody.dart';

class QuizInsane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    InsaneQuestionController _controller = Get.put(InsaneQuestionController());
    return Scaffold(
      body: Body(),
    );
  }
}