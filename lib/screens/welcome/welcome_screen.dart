import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mbti/screens/login/login_screen.dart';
import 'package:mbti/screens/welcome/data/data.dart';
import 'package:mbti/screens/home/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  List<SliderModel> slides = <SliderModel>[];
  int currentIndex = 0;
  PageController pageController = new PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }

  storeWelcomeScreenInfo() async {
    int isViewed = 0;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setInt('welcome_screen', isViewed);
  }

  Widget pageIndexIndicator(bool isCurrentPage){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    storeWelcomeScreenInfo();
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: pageController,
        itemCount: slides.length,
          onPageChanged: (val){
            setState(() {
              currentIndex = val;
            });
          },
          itemBuilder: (context, index){
          return SliderTile(
            imageAssetPath: slides[index].getImageAssetPath(),
            title: slides[index].getTitle(),
            desc: slides[index].getdesc(),
          );
          }),
      bottomSheet: currentIndex != slides.length - 1 ? Container(
        height: Platform.isIOS ? 70 : 60,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                pageController.animateToPage(slides.length - 1, duration: Duration(microseconds: 400), curve: Curves.linear);
              },
                child: Text("SKIP")
            ),
            Row(
              children: <Widget>[
                for(int i = 0; i < slides.length; i++) currentIndex == i ? pageIndexIndicator(true) : pageIndexIndicator(false)
              ],
            ),
            GestureDetector(
              onTap: (){
                pageController.animateToPage(currentIndex + 1, duration: Duration(microseconds: 400), curve: Curves.linear);
              },
              child: Text("NEXT"),
            ),
          ],
        ),
      ) : GestureDetector(

        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              )
          );
        },
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: Platform.isIOS ? 70 : 60,
          color: Colors.cyan,
          child: new InkWell(
            child: Text("GET STARTED", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600
            ),),
          ),
        ),
      ),
    );
  }
}

class SliderTile extends StatelessWidget {

  String imageAssetPath, title, desc;
  SliderTile({required this.imageAssetPath, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssetPath),
          SizedBox(height: 20,),
          Text(title, style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 12,),
          Text(desc, textAlign: TextAlign.center, style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16
          ),),
        ],
      ),
    );
  }
}
