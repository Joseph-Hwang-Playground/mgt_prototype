import 'package:flutter/material.dart';
import 'package:mgt_prototype/challenge_page.dart';
import 'package:mgt_prototype/market_place.dart';
import 'package:mgt_prototype/my_bottle.dart';
import 'package:mgt_prototype/project_page.dart';
import 'package:mgt_prototype/proposal_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _tabIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aquarius'), actions: [
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
              icon: Icon(Icons.shopping_bag), label: 'Market Place'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt), label: 'Proposal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_turned_in_rounded),
              label: 'Challenges'),
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
      ),
    );
  }
}

Widget _buildPage(int index) {
  switch (index) {
    case 0:
      return ProjectPage();
    case 1:
      return MarketPlace();
    case 2:
      return MyBottle();
    case 3:
      return ProposalPage();
    case 4:
      return ChallengePage();
    default:
      return MyBottle();
  }
}
