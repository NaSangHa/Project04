import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/profiledir/lookotherprofile.dart';
import 'package:projectapp/settingsdir/setapp.dart';
import 'package:projectapp/settingsdir/edittprofile.dart';

class SettingProfile extends StatefulWidget {
  const SettingProfile({Key? key}) : super(key: key);

  @override
  State<SettingProfile> createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
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
            bottom: 0,
            left: 100,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 4,
                    color: Theme.of(context)
                        .scaffoldBackgroundColor),
                color: Theme.of(context).primaryColor,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const EditProfile()),
                  );
                },
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OtherProfile()),
                  )
                },
                child: Text("친구 목록",textAlign: TextAlign.center,style: GoogleFonts.robotoMono(color: Colors.black,fontSize: 24,),),
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