// create a beautiful instagram like feed clone page

import 'package:flutter/material.dart';
import 'package:gdsc_soln_23/screens/feed.dart';
import 'package:gdsc_soln_23/screens/intro.dart';
import 'package:gdsc_soln_23/widgets/feedCard.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';


class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Feed(),
    Intro(),
    Feed(),
    Feed(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _handleRefresh() async {
    // reloading take some time
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.grey,
        height: 200,
        backgroundColor: Colors.grey[200],
        animSpeedFactor: 2, // faster
        // showChildOpacityTransition: false, // shows the child
        child: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Post',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      )
    );
  }
}


/*
// requires liquid_pull_to_refresh package
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class FancyRefresh extends StatelessWidget {
  
  Future<void> _handleRefresh() async {
    // reloading take some time
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.grey,
        height: 200,
        backgroundColor: Colors.grey[200],
        animSpeedFactor: 2, // faster
        // showChildOpacityTransition: false, // shows the child
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                height: 300,
                color: Colors.grey,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                height: 300,
                color: Colors.grey,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                height: 300,
                color: Colors.grey,
                )
              ),
            ),
          ]
        ),
      )
    );
  }
}
*/