import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/settingsdir/setapp.dart';
import 'package:projectapp/settingsdir/setprofile.dart';

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetApp()),
                );
              },
              icon: Icon(
                Icons.settings,
                color: CupertinoDynamicColor(
                    color: Colors.black,
                    darkColor: Colors.white,
                    highContrastColor: Colors.grey,
                    darkHighContrastColor: Colors.white60,
                    elevatedColor: Colors.white24,
                    darkElevatedColor: Colors.white24,
                    highContrastElevatedColor: Colors.white24,
                    darkHighContrastElevatedColor: Colors.white24,
                    debugLabel: '1'),
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
                      color: Colors.teal,
                      child: Stack(
                        children: [
                          Container(
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 4,
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
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
                                color: Colors.green,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SetProfile()),
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
                                color: Colors.green,
                              ),
                              child: TextButton(
                                onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SetApp()),
                                  )
                                },
                                child: Text(
                                  "친구 목록",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.black,
                                    fontSize: 24,
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
                                  "@USERNAME",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
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
                      height: 200,
                      color: Colors.red,
                      child: Text("자기소개 JSON"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 300,
                      color: Colors.red,
                      child: Text("내용 나옴"),
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
