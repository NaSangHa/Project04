import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../groupdir/groupactb.dart';class Group extends StatelessWidget {
  const Group({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)
          ),
        ),
        toolbarHeight: 60,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            GestureDetector(
              onTap: (){
              },
              child: Padding(padding: EdgeInsets.all(0.0),
                child: Image(image:AssetImage(
                  'assets/images/logo.png',),
                  fit: BoxFit.fitHeight,
                  height: 60,
                ),
              ),
            ),
            Expanded(
              flex:6,
              child:
              Text(
                style:GoogleFonts.robotoMono(
                  fontSize: 23,
                )
                ,"내 모임",
              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(
              Icons.settings,color: Colors.black,
              size: 35,
            ),
            ),
          ],
        ),
      ),


      floatingActionButton: ExpandableFab(
        distance: 100,
        children: [
          ActionButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.userGroup),
          ),
          ActionButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.meetup),
          ),
        ],

      ),
      //   onPressed: (){
      //
      //   },
      //   child: FaIcon(FontAwesomeIcons.userGroup),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,

      body: Container(
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              height: 100,
              color:Colors.red
            ),
            Container(
                height: 100,
                color:Colors.green
            ),
            Container(
                height: 100,
                color:Colors.blue
            ),
          ],
        ),
      ),
    );
  }
}

