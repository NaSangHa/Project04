import 'package:flutter/material.dart';
import 'package:projectapp/common/color_constants.dart';
import 'package:projectapp/screen/page1.dart';
import 'package:projectapp/screen/page2.dart';
import 'package:projectapp/screen/page3.dart';
import 'package:projectapp/screen/page4.dart';

class Index extends StatefulWidget {
  const Index({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Index> createState() => _Index();
}

class _Index extends State<Index> {
  int _curIndex = 0;

  final List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
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
        backgroundColor: ColorConstants.gblackColor,
        iconSize: 30,
        selectedItemColor: ColorConstants.kgreyColor,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedItemColor: ColorConstants.kwhiteColor,
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        currentIndex: _curIndex,
        onTap: (index) {
          setState(() {
            _curIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: ColorConstants.gblackColor,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: ColorConstants.gblackColor,
            icon: Icon(Icons.chat_sharp),
            label: 'Board',
          ),
          BottomNavigationBarItem(
            backgroundColor: ColorConstants.gblackColor,
            icon: Icon(Icons.area_chart_rounded),
            label: 'chart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_sharp),
            backgroundColor: ColorConstants.gblackColor,
            label: 'settings',
          ),
        ],
      ),
    );
  }

  Widget getPage() {
    Widget? page;
    switch (_curIndex) {
      case 0:
        page = Page1();
        break;
      case 1:
        page = Page2();
        break;
      case 2:
        page = Page3();
        break;
      case 3:
        page = Page4();
        break;
    }
    return page!;
  }
}
