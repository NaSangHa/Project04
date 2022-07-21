import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/controller/firebase_auth_prov.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    print("111111");
    //call GoogleSignin Provider
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.white,
                      Colors.lightBlueAccent,
                      Colors.lightBlue,
                      Colors.blue,
                      Colors.indigoAccent,
                      Colors.indigo,
                    ])),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Image(image: AssetImage("assets/images/logo.png")),
                  const SizedBox(
                    height: 95,
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text("로그인 하기",style: GoogleFonts.robotoMono(
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      context.read<FirebaseAuthProv>().signInWithGoogle(context);
                    },
                    child: Container(
                      width: 240.0,
                      height: 54.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/btn_google_signin_dark_pressed_web2x.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}

