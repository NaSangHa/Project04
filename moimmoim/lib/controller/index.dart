import 'package:flutter/material.dart';
import 'package:projectapp/page/group.dart';
import 'package:projectapp/page/home.dart';
import 'package:projectapp/page/setting.dart';
import 'package:projectapp/page/timeline.dart';

class Index extends StatefulWidget {
  const Index({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Index> createState() => _Index();
}

class _Index extends State<Index> {
  int _curIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Group(),
    Timeline(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    print('homescreen');
    return Scaffold(
      body: 
      
      Center(
        child: getPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        currentIndex: _curIndex,
        onTap: (index) {
          setState(() {
            _curIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black54,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black54,
            icon: Icon(Icons.groups),
            label: 'Group',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black54,
            icon: Icon(Icons.featured_play_list),
            label: 'TimeLine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.black54,
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget getPage() {
    Widget? page;
    switch (_curIndex) {
      case 0:
        page = Home();
        break;
      case 1:
        page = Group();
        break;
      case 2:
        page = Timeline();
        break;
      case 3:
        page = Setting();
        break;
    }
    return page!;
  }
}
