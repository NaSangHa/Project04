import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/settingsdir/setagree.dart';
import 'package:projectapp/settingsdir/setcs.dart';
import 'package:projectapp/settingsdir/sethelper.dart';



class SetApp extends StatelessWidget {
  
  
  const SetApp({Key? key}) : super(key: key);

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Text(
                style: GoogleFonts.robotoMono(
                  fontSize: 23,
                ),
                " 앱 설정 ",
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Container(
              color: Colors.grey,
              child: TextButton(
                onPressed: (){
    
                },
                style: TextButton.styleFrom(
                  primary: Colors.pink,
                ), 
                child: Text(
                  "친구초대",style: TextStyle(fontSize: 30,), textAlign: TextAlign.right,
                ),
                ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.grey,
              child: TextButton(
                onPressed:() => { Navigator.push(context,MaterialPageRoute(builder: (context) => HelpScreen()),)},
                style: TextButton.styleFrom(
                  primary: Colors.pink,
                ), 
                child: Text(
                  "도움말",style: TextStyle(fontSize: 30,), textAlign: TextAlign.right,
                ),
                ),
            ),

            SizedBox(height: 10,),
            Container(
              color: Colors.grey,
              child: TextButton(
                onPressed:() => { Navigator.push(context,MaterialPageRoute(builder: (context) => SetAgree()),)},
                style: TextButton.styleFrom(
                  primary: Colors.pink,
                ), 
                child: Text(
                  "약관확인",style: TextStyle(fontSize: 30,), textAlign: TextAlign.right,
                ),
                ),
            ),

            SizedBox(height: 10,),
            Container(
              color: Colors.grey,
              child: TextButton(
                onPressed:() => { Navigator.push(context,MaterialPageRoute(builder: (context) => CustomerService()),)},
                style: TextButton.styleFrom(
                  primary: Colors.pink,
                ), 
                child: Text(
                  "고객센터",style: TextStyle(fontSize: 30,), textAlign: TextAlign.right,
                ),
                ),
            ),
            SizedBox(height: 10,),

            Container(
              color: Colors.grey,
              child: TextButton(
                onPressed: (){
    
                },
                style: TextButton.styleFrom(
                  primary: Colors.pink,
                ), 
                child: Text(
                  "로그아웃",style: TextStyle(fontSize: 30,), textAlign: TextAlign.right,
                ),
                ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.grey,
              child: TextButton(
                onPressed: (){
    
                },
                style: TextButton.styleFrom(
                  primary: Colors.pink,
                ), 
                child: Text(
                  "회원탈퇴",style: TextStyle(fontSize: 30,), textAlign: TextAlign.right,
                ),
                ),
            ),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}