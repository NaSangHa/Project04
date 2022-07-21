import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/page/setting.dart';
import 'package:projectapp/profiledir/others/lookotherprofile.dart';
import 'package:projectapp/settingsdir/setapp.dart';
import 'package:projectapp/profiledir/users/edittprofile.dart';

class OthersProfile extends StatefulWidget {
  const OthersProfile({Key? key}) : super(key: key);

  @override
  State<OthersProfile> createState() => _OthersProfileState();
}


class _OthersProfileState extends State<OthersProfile> {



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(                              
              border: Border.all(
                  width: 4,
                  color: Theme.of(context)
                      .primaryColor),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 10),
                ),
              ],
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://i.stack.imgur.com/14h3t.png")),
            ),
          ),
          Positioned(
            top: 14,
            left: 200,
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                    width: 1,
                    color: Theme.of(context)
                        .scaffoldBackgroundColor),
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextButton(
                onPressed: () => {
                  AlertDialog(
                    title: new Text("친구추가"),
                    content: new Text("친구추가 하시겠습니까 ?"),
                    actions: [
                      TextButton(onPressed: (){}, child: Text("예")),
                      TextButton(onPressed: (){ Navigator.pop(context, "Cancel");}, child: Text("아니오")),
                    ],
                  )
                },
                child: Text(
                  "친구 추가하기",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoMono(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 72,
            left: 200,
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle, 
                border: Border.all(
                    width: 1,
                    color: Theme.of(context)
                        .scaffoldBackgroundColor),
              ),
              child: TextButton(
                onPressed: () => {

                },
                child: Text(
                  "@USERNAME",  // $name
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoMono(
                    fontSize: 20,fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      );
  }
}