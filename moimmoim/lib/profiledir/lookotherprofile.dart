import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/profiledir/setbox.dart';
import 'package:projectapp/profiledir/setboxfav.dart';
import 'package:projectapp/profiledir/setboxtimeline.dart';
import 'package:projectapp/settingsdir/othersprofile.dart';

class OtherProfile extends StatefulWidget {
  const OtherProfile({Key? key}) : super(key: key);

  @override
  State<OtherProfile> createState() => _OtherProfileState();
}

class _OtherProfileState extends State<OtherProfile> {
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
          children: [
            Text(" 프로필 ",
            style: GoogleFonts.robotoMono(fontSize: 24),),
          ],
        ),
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_new_rounded),color: Colors.blueAccent,
          onPressed: () {Navigator.pop(context);},),
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
                      child:OthersProfile(),
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
