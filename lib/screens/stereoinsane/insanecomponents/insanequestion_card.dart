import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbti/screens/stereoinsane/insanecontroller/insanequestion_controller.dart';
import 'package:mbti/screens/stereoinsane/insanemodel/insanequestions.dart';

import '../../../constants.dart';
import 'insaneoption.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    // it means we have to pass this
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    InsaneQuestionController _controller = Get.put(InsaneQuestionController());
    return SingleChildScrollView(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kBlueColor, Colors.lightBlueAccent])
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    question.question,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: kWhite),
                  ),
                ),
              ),
            ),
            ...List.generate(
              question.options.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Option(
                  index: index,
                  text: question.options[index],
                  press: () => _controller.checkAns(question, index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}