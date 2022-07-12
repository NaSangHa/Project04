import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectapp/common/index.dart';
import 'package:projectapp/screen/splashlogin.dart';

class HomeDemo extends StatelessWidget {
  const HomeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream : FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }else if (snapshot.hasData){
            return Index(title: 'Home');
          }else if (snapshot.hasError){
            return Center(child: Text('문제발생'),);
          }else{
            return SplashLogin();
          }
        }
      ),
    );
  }
}