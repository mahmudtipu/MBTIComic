import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:mbti/constants.dart';
import 'package:mbti/screens/casino/casino.dart';
import 'package:mbti/screens/celebrities/celebrities.dart';
import 'package:mbti/screens/collections/collection.dart';
import 'package:mbti/screens/conginitive/conginitive.dart';
import 'package:mbti/screens/settings/settings.dart';
import 'package:mbti/screens/shop/shop.dart';
import 'package:mbti/screens/stereoquiz/quiz_easy.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;

        if (_selectedIndex == 0)
          {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsScreen();
                  },
                )
            );
          }
        else if (_selectedIndex == 1)
          {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ShopScreen();
                  },
                )
            );
          }
        else if (_selectedIndex == 2)
        {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CollectionScreen();
                },
              )
          );
        }
      });
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          padding: new EdgeInsets.only(left: 25.0, top: 20.0),
          icon: Image.asset('assets/images/menu.png'),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  backgroundImage,
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/coinn.png',
                      ),
                    ),
                    Text(
                      '$cc',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ShopScreen();
                              },
                            )
                        );
                      },
                      icon: Image.asset(
                        'assets/images/pluscoin.png',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.asset(
              'assets/images/mbtitext.png',
              scale: 1.5,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                primary: false,
                crossAxisCount: 2,
                children: <Widget>[
                  InkWell(
                    child: Card(
                      color: kBlueColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Image.asset(
                                'assets/images/first.png',
                                scale: 1.5
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'STEREOTYPE GAME',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontFamily: 'Fredoka',
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return QuizScreen();
                            },
                          )
                      );
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Image.asset(
                                'assets/images/second.png',
                                scale: 1.5
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'CASINO',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CasinoScreen();
                            },
                          )
                      );
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Image.asset(
                                'assets/images/third.png',
                                scale: 1.5
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'CELEBRITIES QUIZ',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CelebritiesScreen();
                            },
                          )
                      );
                    },
                  ),
                  InkWell(
                    child: Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Image.asset(
                                'assets/images/forth.png',
                                scale: 1.5
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'COGNITIVE FUNCTIONS',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CognitiveScreen();
                            },
                          )
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.black54,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/shop.png'),
              color: Color(0xFFFFFFFF),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/collection.png'),
              color: Color(0xFFFFFFFF),
            ),
            label: 'Collection',
          ),
        ],
      ),
    );
  }
}
