import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Person{
  int age;
  String name;
  bool isLeftHand;

  Person(this.age,this.name,this.isLeftHand);
}

// ==PersonTile 정의
class PersonTile extends StatelessWidget{
  final Person _person;
  final int index;

  PersonTile(this._person, this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[100],
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black,width: 1),
        borderRadius: BorderRadius.circular(0)        
      ),
        child: InkWell(splashColor: Colors.blue,
        onTap: (){
          print('$index번 타일 클릭됨');
        },
          child: SizedBox(
           width: 140,
           height: 200,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(
                 width: double.infinity,   // like Match_parent in Android
                 height: 100,
                 alignment: Alignment.center,
                 color: Colors.blue[50],
                 child: Column(
                   children: [
                     Text(
                       _person.name,
                       style: TextStyle(
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold
                       ),
                     ),
                     Text(
                       "'${_person.age}세'",
                       style: TextStyle(
                         fontSize: 14.0,
                         fontWeight: FontWeight.normal,
                       ),
                     ),
                   ],
                 ),
               ),
               ElevatedButton(
                 child: const Text('ElevatedButton',
                                   style: TextStyle(fontSize: 14),),                    
                 onPressed: () => _onClick(index),
               ),
             ],
           ),
               ),
        ),

    );
  }
  void _onClick(int index){
    print('$index 클릭됨');
  }
}











