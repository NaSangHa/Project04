import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projectapp/common/board.dart';
import 'package:projectapp/common/color_constants.dart';
import 'package:projectapp/controller/firebase_auth_prov.dart';
import 'package:projectapp/firebase_options.dart';
// ...


class BoardWrite extends StatefulWidget {
  const BoardWrite({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BoardWrite> createState() => _BoardWrite();
}

class _BoardWrite extends State<BoardWrite> {

  late CollectionReference writeboard;

  int seqNum = 0;
  final ctlMyText1 = TextEditingController();
  final ctlMyText2 = TextEditingController();

  @override
  void initState(){
    super.initState();
    writeboard= FirebaseFirestore.instance.collection('Board');
  }

  String _dropdown = '자유게시판';   
  final _dropdowns =[
    "자유게시판",
    "한국주식",
    "포트폴리오",
    "가상자산",
    "부동산",
  ];
  // List of items in our dropdown menu
  final String data =
    '[{"code": "1", "title": "자유게시판"},{"code": "2", "title": "한국주식"},{"code": "3", "title": "포트폴리오"},{"code": "4", "title": "가상자산"},{"code": "5", "title": "부동산"}]';

   @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar:
        AppBar(
          title: Text(widget.title),
        ),
      body: SingleChildScrollView(    
        child: Column(          
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
            value: _dropdown,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                _dropdown = newValue!;
              });
            },
            items: _dropdowns
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          // DropdownButtonHideUnderline(
          //   // ignore: unnecessary_new
          //   child: new DropdownButton<String>(
          //     hint: new Text("select Code"),
          //     value:  selectedData,
          //     onChanged: (String? newVal){
          //       setState(() {
          //         selectedData = newVal;
          //       });
          //       print(selectedData);
          //     },
          //     items: _code.map((UseCode map){
          //       // ignore: unnecessary_new
          //       return new DropdownMenuItem<String>(
          //         child: new Text(map.toString(),
          //                     style: new TextStyle(color: Colors.amber),
          //           ),
          //         );                  
          //     }).toList(),
          //     ),
          //   ),              // style: Colors.,
            buildTextField("제목", "제목", false),                        
            buildWriteField("내용", "내용"),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [             
                SizedBox(width: 30,),
                //좋아요
                // Container(
                //   alignment: Alignment.centerLeft,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20)
                //     ,color: Colors.black12,
                //     ),
                //   child: IconButton(onPressed: () => doSelect(),
                //   icon: Icon(Icons.thumb_up_rounded),
                //   iconSize: 24,
                //   ),
                // ),
                
                ElevatedButton(onPressed: () {                   
                  doInsert();
                  Navigator.of(context).pop();                  
                },
                
                  // style: color.Colors,
                 child: const Text('글 쓰기',style: TextStyle(fontSize: 20),),
                ),
                SizedBox(width: 10,),
                
              ],
            ),              
              // Row(mainAxisAlignment: MainAxisAlignment.end,
              //   children: [                  
              //     ElevatedButton(onPressed: () => doUpdate(),
              //       child: const Text('글 수정',style: TextStyle(fontSize: 20),),
              //       ),
              //     SizedBox(width: 21,),
              //   ],
              // ),



            // Column(
            //     children: [
            //       ElevatedButton(onPressed: () => doDelete(),
            //       child: const Text('회원정보 삭제',style: TextStyle(fontSize: 24),),
            //       ),
            //       ElevatedButton(onPressed: () => doShow(),
            //       child: const Text('회원정보 삭제',style: TextStyle(fontSize: 24),),
            //       ),  
            //     ],
            //   ),
          ],
        ),
      ),
    );
  }
  Future<void> doInsert() async{
    
    String title =ctlMyText1.text;
    String context =ctlMyText2.text;    
    
    String bId = /*$user*/"$_dropdown$title";

    print(title + context + bId);

    var documentSnapshot = await writeboard.doc(bId).get();
    if(documentSnapshot != null){
      writeboard.doc(bId).set({
        'category' :'$_dropdown',
        'title' : '$title',
        'context' : '$context',
      });
    }else{
      print('작성오류');
    }
    
  }


  // void doSelect() async{
  //   String sNum =ctlMyText1.text;
  //   int nNum =int.parse(sNum);
  //   String sId = 'member$nNum';

  //   var documentSnapshot = await writeboard.doc(sId).get();
  //   //documnetSnapshow <-- ID에 대한 조회 값
  //   if(documentSnapshot != null){ //<-- documentSnapshot 값이 비어있지 않을 경우
  //     String? pw = documentSnapshot.get('pw');
  //     String? email = documentSnapshot.get('email');
  //     print('pw : $buildTextField');
  //     print('email : $buildWriteField');
  //   }else{
  //     print('firebase Error!');
  //   }
  // }

  // Future<void> doUpdate() async{
  //   String sNum =ctlMyText1.text;
  //   int nNum =int.parse(sNum);
  //   String sId = 'member$nNum';

  //   var documentSnapshot = await writeboard.doc(sId).get();
  //   if(documentSnapshot != null){
  //     writeboard.doc(sId).update({
  //       // 'pw' : '1234',
  //       'email' : 'QQQ@investing.com',
  //     });
  //   }else{
  //     print('회원 정보가 존재하지 않습니다.');
  //   }
  // }

  // Future<void> doDelete() async{
  //   String sNum =ctlMyText1.text;
  //   int nNum =int.parse(sNum);
  //   String sId = 'member$nNum';

  //   var documentSnapshot = await writeboard.doc(sId).get();
  //   if(documentSnapshot != null){
  //     var documentReference = await writeboard.doc(sId);
  //     documentReference.delete();
      
  //   }else{
  //     print('회원 정보가 존재하지 않습니다.');
  //   }
  // }

  // Future<void> doShow() async{
  //   String sNum =ctlMyText1.text;
  //   int nNum =int.parse(sNum);
  //   String sId = 'member$nNum';

  //   var documentSnapshot = await writeboard.doc(sId).get();
  //   if(documentSnapshot != null){
  //     var documentReference = await writeboard.doc(sId);
  //     documentReference.delete();
      
  //   }else{
  //     print('회원 정보가 존재하지 않습니다.');
  //   }
  // }
  
  bool showPassword = false;
  Widget buildTextField(String labelText, String placeholder, bool isPassword) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0,right:10,left:10),        
      
      child: TextFormField(
        controller: ctlMyText1,
        obscureText: isPassword ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(Icons.remove_red_eye),
                  )
                : null,
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,
            width: 1.0),                  
              ),
            enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
            ),
            counterStyle: TextStyle(
            fontSize: 20.0,
            color:Colors.red,
        ),
      ),
      ),
    );
  }

  Widget buildWriteField(String labeText, String placeholder){
    return Container(
              height: MediaQuery.of(context).size.height/3,     
              padding: EdgeInsets.only(right:10,left:10),                       
              child: TextFormField(
                
                keyboardType: TextInputType.text,
                maxLines: 200,
                controller:ctlMyText2,
                decoration: const InputDecoration(
                  labelText: "내용",
                  hintText: "내용",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey,
                  width: 1.0),                  
                   ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                  ),
                  counterStyle: TextStyle(
                  fontSize: 20.0,
                  color:Colors.red,
                  ),
                ),
              ),
            );
  }
}
