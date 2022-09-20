import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/screens/celebrities/celebritieshard/hardcomponents/hardprogress_bar.dart';
import 'package:mbti/screens/celebrities/celebritieshard/hardcomponents/hardquestion_card.dart';
import 'package:mbti/screens/celebrities/celebritieshard/hardcontroller/hardquestion_controller.dart';
import 'package:mbti/screens/home/home.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);
  @override
  State<Body> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<Body> {

  //String _backgroundImage = 'assets/images/energybar.png';

  @override
  Widget build(BuildContext context) {

    Future<bool?> _openMyPage() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Exit without finishing?'),
              //content: Text('Please press the SAVE button at the bottom of the page'),
              actions: <Widget>[
                TextButton(
                  child: Text('NO'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                TextButton(
                  child: Text('YES'),
                  onPressed: () {
                    Get.back();
                    Get.back();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        )
                    );
                  },
                ),
              ],
            );
          });
    }
    // So that we have acccess our controller
    CelHardQuestionController _questionController = Get.put(CelHardQuestionController());
    return WillPopScope(
      onWillPop: () async {
        bool? result= await _openMyPage();
        if(result == null){
          result = false;
        }
        return result;
      },
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 25),
                child: Image.asset(
                  setImage(),
                ),
              ),
              Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Center(
                          child: Image.asset(
                            'assets/images/celimg.png',
                            height: 100,
                            width: 200,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                              child: Obx(
                                    () => Text.rich(
                                  TextSpan(
                                    text:
                                    "Hard : Question # ${_questionController.questionNumber.value+10}",
                                    style: new TextStyle(
                                      fontFamily: 'Fredoka-SemiBold',
                                      fontSize: 18.0,
                                      color: Colors.black87,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "/${_questionController.questions.length+10}",
                                        style: new TextStyle(
                                          fontFamily: 'Fredoka-SemiBold',
                                          fontSize: 18.0,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                              child: ProgressBar(),
                            ),
                          ],
                        ),
                        Divider(thickness: 1.5),
                        SizedBox(height: kDefaultPadding),
                        Expanded(
                          child: PageView.builder(
                            // Block swipe to next qn
                            physics: NeverScrollableScrollPhysics(),
                            controller: _questionController.pageController,
                            onPageChanged: _questionController.updateTheQnNum,
                            itemCount: _questionController.questions.length,
                            itemBuilder: (context, index) => QuestionCard(
                                question: _questionController.questions[index]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/images/coinn.png',
                                    ),
                                  ),
                                  Obx(
                                        () => Text(
                                      '${_questionController.coin.value}',
                                      textAlign: TextAlign.center,
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'assets/images/mysteryy.png',
                                    ),
                                  ),
                                  Obx(
                                        () => Text(
                                      '${_questionController.sticker.value}',
                                      textAlign: TextAlign.center,
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}