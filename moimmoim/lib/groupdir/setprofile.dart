import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/widget/setcatebutton.dart';


class SetProfile extends StatefulWidget {
  const SetProfile({Key? key}) : super(key: key);

  @override
  State<SetProfile> createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
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
              backgroundColor: Colors.green,
              primary: Colors.black87,
              padding: EdgeInsets.symmetric(horizontal: 10),
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: () {
              //확인버튼
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
                    Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
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
                                color: Colors.pink,
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
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
                      color: Colors.red,
                      child: Text(
                        "자기소개",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(FontAwesomeIcons.penToSquare),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.red,
                      child: Text(
                        "전화번호",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
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
                      color: Colors.red,
                      child: Text(
                        "비밀번호",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(FontAwesomeIcons.lock),
                        border: OutlineInputBorder(),
                      ),
                    ),
          
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.red,
                      child: Text(
                        "비밀번호확인",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(FontAwesomeIcons.lock),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.red,
                      child: Text(
                        "카테고리",
                        style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(letterSpacing: .5, fontSize: 18)),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0, bottom: 3.0),
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: 
              SetCateButton(),
          ),
        ],
      ),      
    );
  }
}
