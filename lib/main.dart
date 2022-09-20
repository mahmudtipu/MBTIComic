import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mbti/screens/login/login_screen.dart';
import 'package:mbti/screens/login/provider/google_sign_in.dart';
import 'package:mbti/screens/welcome/welcome_screen.dart';
import 'package:mbti/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

int? isViewed;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.black87));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  isViewed = preferences.getInt('welcome_screen');

  await Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIOverlays([]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: isViewed!=0 ? WelcomeScreen() : LoginScreen(),
      ),
    );
  }
}