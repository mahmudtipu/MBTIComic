import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:mbti/screens/celebrities/celebritiesmedium/medcomponents/medbody.dart';
import 'package:mbti/screens/celebrities/celebritiesmedium/medcontroller/medquestion_controller.dart';

class CelMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelMediumQuestionController _controller = Get.put(CelMediumQuestionController());
    return Scaffold(
      body: Body(),
    );
  }
}