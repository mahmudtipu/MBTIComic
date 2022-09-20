import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mbti/screens/home/home.dart';
import 'package:mbti/screens/login/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/material/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          else if(snapshot.hasData) {
            return Home();
          }
          else {
            return Scaffold(
              body: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        colors: [
                          Color(0xFFE65100),
                          Color(0xFFEF6C00),
                          Color(0xFFFFA726),
                        ]
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 80,),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/images/icon.png',
                          scale: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 80,),
                    Column(
                      children: <Widget>[
                        Center(child: Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 35,fontWeight: FontWeight.bold),)),
                        SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0,right: 30),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                            ),
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(50.0),
                                ),
                                primary: Colors.blue
                              ),
                              onPressed: () {

                              },
                              icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white,),
                              label: Text('continue with facebook'),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Center(child: Text("or", style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 20,fontStyle: FontStyle.italic),)),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0,right: 30),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black
                            ),
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(50.0),
                                ),
                                primary: Colors.white,
                                onPrimary: Colors.black,
                              ),
                              onPressed: () {
                                final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                                provider.googleLogin();
                              },
                              icon: FaIcon(FontAwesomeIcons.google, color: Colors.blueAccent,),
                              label: Text('continue with Google'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
