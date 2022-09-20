import 'package:flutter/material.dart';

import '../../constants.dart';

class ExchangeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: new Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black12, Colors.black12],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: TabBar(
            //isScrollable: true,
            indicator: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              shape: BoxShape.rectangle,
              //borderRadius: BorderRadius.circular(50),
              color: kYellowColor,
            ),
            indicatorColor: kYellowColor,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.black87,
            labelStyle: TextStyle(fontSize: 16.0),
            indicatorWeight: 5,
            tabs: [
              Tab(text: 'Energy'),
              Tab(text: 'Sticker box'),
              Tab(text: 'Mystery box'),
            ],
          ),
        ),
      ),
      body: TabBarView(
        children: [
          buildPage('Exchange enegry'),
          buildPage('stickers and few coins'),
          buildPage('energy, stickers & coins'),
        ],
      ),
    ),
  );

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
}