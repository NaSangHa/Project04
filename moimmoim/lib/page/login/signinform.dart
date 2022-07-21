import 'package:flutter/material.dart';
import 'package:projectapp/widget/setcatebutton.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Flexible(child:
            Container(

            ),
          ),
          Flexible(child:
            Container(
              child: Row(
                children: [

                ],
              ),

            ),
          ),
          Flexible(child:
          Container(

          ),
          ),
          Flexible(child:
          Container(

          ),
          ),
          Flexible(child:
          Container(

          ),
          ),
          Flexible(child:
          Container(

          ),
          ),
          Flexible(child:
            SetCateButton(),
          ),
          Flexible(child:
            Container(
              child: Text("agreement"),
            ),
          ),
          TextButton(onPressed: (){},
              child: Text("회원가입"),),
        ],
      ),
    );
  }
}
