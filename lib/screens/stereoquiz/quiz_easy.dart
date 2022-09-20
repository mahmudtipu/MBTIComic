import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/screens/shop/shop.dart';
import 'package:mbti/screens/stereoquiz/controller/question_controller.dart';

import 'package:mbti/screens/stereoquiz/components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      body: energy>4 ? ShopScreen() : Body(),
    );
  }
}