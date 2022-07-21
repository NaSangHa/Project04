import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/widget/setcatebutton.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final int maxLine = 5;
  bool showPassword = false;
  bool isPassword = false;

  final ctlintro = TextEditingController();
  final ctlcell = TextEditingController();
  final ctlpass1 = TextEditingController();
  final ctlpass2 = TextEditingController();
//텍스트 컨트롤러

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: (){ Navigator.pop(context); }, 
          icon: Icon(Icons.arrow_back_ios_new
          ,color: Theme.of(context).hintColor,),
          ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
        ),
        toolbarHeight: 60,
        centerTitle: false,
        actions: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              primary: Colors.black87,
              padding: EdgeInsets.symmetric(horizontal: 10),
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: () {
              print("confirm"); //확인버튼
            },
            child: IconButton(
                icon: Icon(Icons.check), onPressed: () {}, color: Colors.black),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Text(
                style: GoogleFonts.robotoMono(
                  fontSize: 23,
                ),
                "프로필수정",
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 25, right: 16),
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: ListView(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 4,
                                  color: Theme.of(context).scaffoldBackgroundColor),
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
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 4,
                                    color: Theme.of(context).scaffoldBackgroundColor),
                                color: Colors.blueAccent,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.mode_edit_outline),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "자기소개",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(FontAwesomeIcons.penToSquare),
                        border: OutlineInputBorder(),
                      ),minLines: 3,maxLines: 4,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        "전화번호",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(FontAwesomeIcons.mobileScreenButton),
                        border: OutlineInputBorder(),                        
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        "비밀번호",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(FontAwesomeIcons.lock),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text(
                        "비밀번호확인",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(FontAwesomeIcons.lock),
                        border: OutlineInputBorder(),                        
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text(
                        "카테고리",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(size: 35,Icons.category_outlined,color: Colors.grey,),
                        Container(
                          height: 100,
                          width: 336,
                          child: SetCateButton(),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),      
    );
  }
}
