import 'package:flutter/material.dart';
import 'package:mbti/screens/celebrities/components/body.dart';
import 'package:mbti/screens/shop/shop.dart';

import '../../constants.dart';

class CelebritiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: energy>4 ? ShopScreen() : Body(),
    );
  }
}