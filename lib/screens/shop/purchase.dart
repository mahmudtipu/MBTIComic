import 'package:flutter/material.dart';

import '../../constants.dart';

class PurchaseScreen extends StatelessWidget {
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
              Tab(text: 'Coin'),
              Tab(text: 'Energy'),
              Tab(text: 'Mystery box'),
            ],
          ),
        ),
      ),
      body: TabBarView(
        children: [
          new ListView(
            children: list,
          ),
          buildPage('Buy energy'),
          buildPage('Buy mystery box'),
        ],
      ),
    ),
  );

  List<Widget> list = <Widget>[
    Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [kShopListColor, kShopListColor],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: new ListTile(
          title: new Text('20 Coins',
              style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white)),
          trailing: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: new Text('\$.50'
                  ),
                ),
              )),
          leading: new IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/coinn.png',
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [kShopListColor, kShopListColor],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: new ListTile(
          title: new Text('100 Coins',
              style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white)),
          trailing: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: new Text('\$2'
                  ),
                ),
              )),
          leading: new IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/coinn.png',
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [kShopListColor, kShopListColor],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: new ListTile(
          title: new Text('300 Coins',
              style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white)),
          trailing: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: new Text('\$5'
                  ),
                ),
              )),
          leading: new IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/coinn.png',
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [kShopListColor, kShopListColor],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: new ListTile(
          title: new Text('700 Coins',
              style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white)),
          trailing: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: new Text('\$10'
                  ),
                ),
              )),
          leading: new IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/coinn.png',
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [kShopListColor, kShopListColor],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: new ListTile(
          title: new Text('1000 Coins',
              style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white)),
          trailing: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: new Text('\$15'
                  ),
                ),
              )),
          leading: new IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/coinn.png',
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [kShopListColor, kShopListColor],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: new ListTile(
          title: new Text('1600 Coins',
              style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white)),
          trailing: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: new Text('\$20'
                  ),
                ),
              )),
          leading: new IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/coinn.png',
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [kShopListColor, kShopListColor],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: new ListTile(
          title: new Text('3400 Coins',
              style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white)),
          trailing: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: new Text('\$40'
                  ),
                ),
              )),
          leading: new IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/coinn.png',
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [kShopListColor, kShopListColor],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: new ListTile(
          title: new Text('4000 Coins',
              style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white)),
          trailing: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.lightGreen],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: new Text('\$50'
                  ),
                ),
              )),
          leading: new IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/coinn.png',
            ),
          ),
        ),
      ),
    ),
  ];

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
}