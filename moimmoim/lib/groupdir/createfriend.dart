import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateFriend extends StatefulWidget {
  const CreateFriend({Key? key}) : super(key: key);

  @override
  State<CreateFriend> createState() => _CreateFriendState();
}

class _CreateFriendState extends State<CreateFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("text")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 100,),
            Container(height: 100,),
            Container(height: 100,),
            Container(height: 100,),
            Container(height: 100,),
            Container(height: 100,),
            ElevatedButton(onPressed: (){print("print");}, 
            child: Text("text")),

          ],
        ),)
    );
  }
}