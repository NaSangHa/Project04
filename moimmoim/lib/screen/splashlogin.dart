import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/common/color_constants.dart';
import 'package:projectapp/controller/firebase_auth_prov.dart';
import 'package:provider/provider.dart';

class SplashLogin extends StatefulWidget {
  const SplashLogin({Key? key}) : super(key: key);

  @override
  State<SplashLogin> createState() => _SplashLoginState();
}

class _SplashLoginState extends State<SplashLogin> {  
  @override
  Widget build(BuildContext context) {
    print("111111");
    //call GoogleSignin Provider    
    return Scaffold(      
      body:
      SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.green,
                ColorConstants.sblueColor,              
                ColorConstants.spurpleColor,
                ColorConstants.korangeColor,
                Colors.red,
              ])
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Stock&Talk',
              style: GoogleFonts.expletusSans(
                fontSize: 60,
                color:ColorConstants.primaryWhite,
                ),
              ),
            const SizedBox(height: 55,),
            
            GestureDetector(
              onTap: () {
                context.read<FirebaseAuthProv>().signInWithGoogle(context);
              },
              child: Container(
                width: 240.0,
                height: 54.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/btn_google_signin_dark_pressed_web2x.png'),
                    fit: BoxFit.cover
                  ),
                ),
      
              ),
            ),
          ]),
        ),
      )
    );    
  }
  final user = FirebaseAuth.instance.currentUser!;
 
}

  

