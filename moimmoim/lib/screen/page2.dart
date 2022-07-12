import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/common/board.dart';
import 'package:projectapp/common/color_constants.dart';
import 'package:projectapp/controller/search_prov.dart';
import '../widgets/boardwrite.dart';


class Page2 extends StatefulWidget {
  String data = '';

  Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
//2페이지는 인스타 그램 같은 feed 기능으로 주식 게시판 넣을 예정
  @override
  Widget build(BuildContext context) {
    print('Page2');
    return Scaffold(
      appBar:
          AppBar(elevation: 0, 
            title: Text('Stock&Talk',
            style: GoogleFonts.expletusSans(
              fontSize: 29,              
              ),
            ),
          centerTitle: true,
          actions: [
        IconButton(onPressed: () {
          
        },
          icon: Icon(Icons.search_outlined),
          padding: const EdgeInsets.all(15.0),
        ),
        
        IconButton(          
          onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => const BoardWrite(title:"게시판")),
                );
               },   
          padding: const EdgeInsets.all(15.0),
          icon : Icon(Icons.message_outlined),
        ),
      ]),
      body: Column(        // mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget> [
          Expanded(
            child: Board(),
          ),
        ]
      ),
    );
  }
}
class Freetalk {}
