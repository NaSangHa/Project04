

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoardReply extends StatefulWidget {
  const BoardReply({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BoardReply> createState() => _BoardReply();
}

class _BoardReply extends State<BoardReply> {

  late CollectionReference replyboard;

  int seqNum = 0;
  final ctlMyText1 = TextEditingController();
  final ctlMyText2 = TextEditingController();

  @override
  void initState(){
    super.initState();
    replyboard= FirebaseFirestore.instance.collection('replyboard');
  }

   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: 
        Column(children: [
          buildTextField("댓글", "댓글", false),                        
        ]
        ),
      ),
    );
  }   
           
  Future<void> doInsert() async{
    
    String reply =ctlMyText1.text;
    // String father = ;
    String bId = /*$user$father*/'$reply';    
    String sId = 'BoardWrite$reply';

    var documentSnapshot = await replyboard.doc(sId).get();
    if(documentSnapshot != null){
      replyboard.doc(sId).set({
        // 'father' : '$father',
        'context' : '$context',
      });
    }else{
      print('작성오류');
    }
  }


  void doSelect() async{
    String sNum =ctlMyText1.text;
    int nNum =int.parse(sNum);
    String sId = 'BoardWrite$nNum';

    var documentSnapshot = await replyboard.doc(sId).get();
    //documnetSnapshow <-- ID에 대한 조회 값
    if(documentSnapshot != null){ //<-- documentSnapshot 값이 비어있지 않을 경우
      String? pw = documentSnapshot.get('pw');
      String? email = documentSnapshot.get('email');
      print('pw : $buildTextField');
      // print('email : $buildWriteField');
    }else{
      print('firebase Error!');
    }
  }

  Future<void> doUpdate() async{
    String sNum =ctlMyText1.text;
    int nNum =int.parse(sNum);
    String sId = 'member$nNum';

    var documentSnapshot = await replyboard.doc(sId).get();
    if(documentSnapshot != null){
      replyboard.doc(sId).update({
        // 'pw' : '1234',
        'email' : 'QQQ@investing.com',
      });
    }else{
      print('회원 정보가 존재하지 않습니다.');
    }
  }

  Future<void> doDelete() async{
    String sNum =ctlMyText1.text;
    int nNum =int.parse(sNum);
    String sId = 'member$nNum';

    var documentSnapshot = await replyboard.doc(sId).get();
    if(documentSnapshot != null){
      var documentReference = await replyboard.doc(sId);
      documentReference.delete();
      
    }else{
      print('회원 정보가 존재하지 않습니다.');
    }
  }

  Future<void> doShow() async{
    String sNum =ctlMyText1.text;
    int nNum =int.parse(sNum);
    String sId = 'member$nNum';

    var documentSnapshot = await replyboard.doc(sId).get();
    if(documentSnapshot != null){
      var documentReference = await replyboard.doc(sId);
      documentReference.delete();
      
    }else{
      print('회원 정보가 존재하지 않습니다.');
    }
  }
  
  bool showPassword = false;
  Widget buildTextField(String labelText, String placeholder, bool isPassword) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
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
            )),
      ),
    );
  }
}