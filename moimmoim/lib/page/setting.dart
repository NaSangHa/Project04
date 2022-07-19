import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/profiledir/setbox.dart';
import 'package:projectapp/profiledir/setboxfav.dart';
import 'package:projectapp/profiledir/setboxtimeline.dart';
import 'package:projectapp/settingsdir/setapp.dart';
import 'package:projectapp/settingsdir/edittprofile.dart';
import 'package:projectapp/settingsdir/settingprofile.dart';


class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final int maxLine = 5;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
        ),
        toolbarHeight: 60,
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                //TRY TO RETURN TO HOME PAGE
              },
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Image(
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                  fit: BoxFit.fitHeight,
                  height: 60,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                style: GoogleFonts.robotoMono(
                  fontSize: 23,
                ),
                "  내 프로필",
              ),
            ),
            IconButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => SetApp()),);},
              color: Colors.blue,
              icon: Icon(
                Icons.settings,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: Container(                
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    Container(
                      child:SettingProfile(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(height: 3,
                    decoration: BoxDecoration(
                      color: Colors.grey
                    ),),
                    SizedBox(height: 20,),
                    Container(
                      child: TextBoxforSetting(value: 'introduction'), //Member - introduction
                    ),
                    SizedBox(
                      height: 20,
                    ),                    
                    Container(
                      child: TimeLineforSetting(value: 'tlId'),  // Timeline - tlID
                    ),
                    SizedBox(
                      height: 20,
                    ),                    
                    Container(
                      child: FavoriteforSetting(value: 'favorite'),  // Member - Favorite
                    ),
                    SizedBox(
                      height: 20,
                    ),     

                    
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     OutlinedButton(
                    //       style: OutlinedButton.styleFrom(
                    //         backgroundColor: Colors.white,
                    //         primary: Colors.black87,
                    //         padding: EdgeInsets.symmetric(horizontal: 40),
                    //         elevation: 2,
                    //         shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(20)),
                    //       ),
                    //       onPressed: () {},
                    //       child: Text("CANCEL",
                    //           style: TextStyle(
                    //               fontSize: 14,
                    //               letterSpacing: 2.2,
                    //               color: Colors.black)),
                    //     ),
                    //     RaisedButton(
                    //       onPressed: () {},
                    //       color: Colors.green,
                    //       padding: EdgeInsets.symmetric(horizontal: 50),
                    //       elevation: 2,
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(20)),
                    //       child: Text(
                    //         "SAVE",
                    //         style: TextStyle(
                    //             fontSize: 14,
                    //             letterSpacing: 2.2,
                    //             color: Colors.white),
                    //       ),
                    //     )
                    //   ],
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
