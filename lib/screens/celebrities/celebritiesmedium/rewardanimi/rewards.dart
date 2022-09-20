import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mbti/screens/celebrities/celebritiesmedium/medcontroller/medquestion_controller.dart';
import 'package:mbti/screens/home/home.dart';

import '../../../../constants.dart';

class RewardScreen extends StatefulWidget {

  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2), () {
      cc = cc+c;
      c=0;
      Get.offAll(Home());
    });

    CelMediumQuestionController _questionController = Get.put(CelMediumQuestionController());

    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/medal.png',
            width: 200,
            height: 200,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(70),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Card(
                  color: Colors.blueGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        color: Colors.black87,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Rewards collected !",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              backgroundColor: Colors.black87,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/coinn.png',
                            ),
                          ),
                          Obx(
                                () => Text(
                              "${_questionController.coin.value}",
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      if(s==2)
                        Padding(
                            padding: const EdgeInsets.all(kDefaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  color: kBlueColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/easysticker.png',
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ),
                                Card(
                                  color: kBlueColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/sticker2.png',
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),

                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Image.asset('assets/gifs/clap.gif', scale: 6),
              ),
              Spacer(),
              Image.asset('assets/gifs/clap.gif', scale: 4),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Image.asset('assets/gifs/clap.gif', scale: 5),
              ),
            ],
          )
        ],
      ),
    );
  }
}
