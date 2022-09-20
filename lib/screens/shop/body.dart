import 'package:flutter/material.dart';
import 'package:mbti/screens/shop/exchange.dart';
import 'package:mbti/screens/shop/purchase.dart';

import '../../constants.dart';

class ShopBody extends StatefulWidget {
  @override
  _ShopBodyState createState() => _ShopBodyState();
}

class _ShopBodyState extends State<ShopBody> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.purple,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [kGrayColor, kGrayColor],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        bottom: TabBar(
          //isScrollable: true,
          indicatorColor: Colors.transparent,
          labelColor: kYellowColor,
          unselectedLabelColor: Colors.white,
          labelStyle: TextStyle(fontSize: 17.0),
          indicatorWeight: 5,
          tabs: [
            Tab(text: 'Purchase from store'),
            Tab(text: 'Exchange with coin'),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(
        children: [
          PurchaseScreen(),
          ExchangeScreen(),
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