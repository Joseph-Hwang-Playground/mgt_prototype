import 'package:flutter/material.dart';
import 'package:mgt_prototype/market_place.dart';
import 'package:mgt_prototype/my_bottle.dart';
import 'package:mgt_prototype/project_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _tabIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Bottle'), actions: [
        IconButton(
          icon: new Icon(Icons.info),
          alignment: Alignment.center,
          padding: new EdgeInsets.symmetric(horizontal: 4.0),
          onPressed: () {},
        ),
        IconButton(
          icon: new Icon(Icons.settings),
          alignment: Alignment.center,
          padding: new EdgeInsets.symmetric(horizontal: 4.0),
          onPressed: () {},
        ),
      ]),
      body: SingleChildScrollView(
        child: _buildPage(_tabIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.create_new_folder), label: 'Projects'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Market Place'),
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}

Widget _buildPage(int index) {
  switch (index) {
    case 0:
      {
        return ProjectPage();
      }
    case 1:
      {
        return MyBottle();
      }
    case 2:
      {
        return MarketPlace();
      }
    default:
      {
        return MyBottle();
      }
  }
}
