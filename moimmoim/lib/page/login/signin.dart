import 'package:flutter/material.dart';
import 'package:projectapp/page/login/signinform.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextFormField(

          ),
        ),
        Container(
          child: TextFormField(

          ),
        ),
        ElevatedButton(onPressed: (){},
          child: Text("로그인"),),
        ElevatedButton(onPressed: (){
          SignInForm();
        },
          child: Text("회원가입"),),
        TextButton(onPressed: (){},
          child: Text("아이디/비밀번호 찾기"),),
        Text("처음이세요 ?"),
        Text("아이디가 없으신 분은 '회원가입'을 하여"
            "서비스를 이용 하실 수 있습니다."),
      ],
    );
  }
}
