import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/screens/celebrities/celebrities.dart';
import 'package:mbti/screens/celebrities/celebritieshard/hardmodel/hardquestions.dart';
import 'package:mbti/screens/celebrities/celebritieshard/rewardanimi/rewards.dart';
import 'package:mbti/screens/celebrities/celebritiesinsane/celebrities_insane.dart';

// We use get package for our state management

class CelHardQuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  // Lets animated our progress bar

  late AnimationController _animationController;
  late Animation _animation;

  // so that we can access our animation outside
  Animation get animation => this._animation;

  late PageController _pageController;

  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
        id: question['id'],
        question: question['question'],
        options: question['options'],
        answer: question['answer_index']),
  )
      .toList();

  List<Question> get questions => this._questions;

  bool _isAnswered = false;

  bool get isAnswered => this._isAnswered;

  late int _correctAns;

  int get correctAns => this._correctAns;

  late int _selectedAns;

  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;

  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;

  int get numOfCorrectAns => this._numOfCorrectAns;

  RxInt _coin = c.obs;

  RxInt get coin => this._coin;

  RxInt _sticker = s.obs;

  RxInt get sticker => this._sticker;

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: Duration(seconds: 10), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation
    // Once 60s is completed go to the next qn
    //_animationController.forward().whenComplete(nextQuestion);
    _animationController.forward();
    _pageController = PageController();
    super.onInit();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns != _selectedAns) {
      Future.delayed(Duration(seconds: 1), () {
        Get.dialog(
          Center(
            child: Material(
              color: kRedColor,
              child: WillPopScope(
                onWillPop: () async => false,
                child: Container(
                    height: 240,
                    width: 320,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Oh! You got it wrong.',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset('assets/gifs/sorry.gif', scale: 8),
                          Spacer(),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Container(
                                height: 40,
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Center(
                                  child: Text(
                                    "Try Again",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              _animationController.reset();
                              _animationController.forward();
                              _questionNumber = 1.obs;
                              _isAnswered = false;
                              Get.back();
                              Get.back();
                              Get.to(CelebritiesScreen());
                            },
                          ),
                          InkWell(
                            onTap: () {
                              _animationController.reset();
                              _animationController.forward();
                              _questionNumber = 1.obs;
                              _isAnswered = false;
                              Get.back();
                              Get.back();
                              Get.to(RewardScreen());
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Container(
                                height: 40,
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Center(
                                  child: Text(
                                    "Collect Rewards",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
          barrierDismissible: false,
        );
      });
    } else {
      if(_questionNumber.value==1)
      {
        c=c+5;
      }
      else if(_questionNumber.value==2)
      {
        c=c+5;
      }
      else if(_questionNumber.value==3)
      {
        c=c+5;
      }
      else if(_questionNumber.value==4)
      {
        c=c+6;
      }
      else if(_questionNumber.value==5)
      {
        c=c+6;
        s++;
      }
      _coin.value = c;
      _sticker.value = s;
      // Once user select an ans after 3s it will go to the next qn
      Future.delayed(Duration(seconds: 1), () {
        nextQuestion();
      });
    }

    // It will stop the counter
    _animationController.stop();
    update();
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();
      _animationController.forward();

      // Then start it again
      // Once timer is finish go to the next qn
      //_animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us simple way to naviigate another page
      Get.dialog(
        Center(
          child: Material(
            color: Colors.green,
            child: WillPopScope(
              onWillPop: () async => false,
              child: Container(
                  height: 270,
                  width: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'assets/images/coinn.png',
                                  ),
                                ),
                                Text(
                                  '$c',
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black54,
                                  ),
                                ),
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
                                Text(
                                  '$s',
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          'Congrats! You made it...',
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            backgroundColor: textBack,
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset('assets/images/happy.png', scale: 1.5),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: GestureDetector(
                            onTap: () {
                              _animationController.reset();
                              _animationController.forward();
                              _questionNumber = 1.obs;
                              _isAnswered = false;
                              Get.back();
                              Get.back();
                              energy--;
                              Get.to(CelebritiesInsane());
                            },
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  "Go Further",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _animationController.reset();
                            _animationController.forward();
                            _questionNumber = 1.obs;
                            _isAnswered = false;
                            Get.back();
                            Get.back();
                            Get.to(RewardScreen());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  "Claim & Sleep",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
        barrierDismissible: false,
      );
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
