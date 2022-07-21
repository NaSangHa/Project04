import 'package:flutter/material.dart';
import 'package:projectapp/controller/service/userapi.dart';
import 'package:projectapp/models/userdata.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';

class NaverLogin extends ChangeNotifier{
  void login_naver() async{
    NaverLoginResult res = await FlutterNaverLogin.logIn();
    setState((){

    });
  }
}

class GoogleLogin extends ChangeNotifier{
  UserApi _userApi = UserApi();

  List<Members> _members = [];
  List<Members> get members => _members;

  fetchMembers() async{
    //Member api 에 접근 해서 데이터 로드
    List<Members>? memberList = await _userApi.fetchMembers();
    _members = memberList!;

    notifyListeners();
  }
}

class FBLogin extends ChangeNotifier{
  UserApi _userApi = UserApi();

  List<Members> _members = [];
  List<Members> get members => _members;

  fetchMembers() async{
    //Member api 에 접근 해서 데이터 로드
    List<Members>? memberList = await _userApi.fetchMembers();
    _members = memberList!;

    notifyListeners();
  }
}
class KaKaoLogin extends ChangeNotifier{
  UserApi _userApi = UserApi();

  List<Members> _members = [];
  List<Members> get members => _members;

  fetchMembers() async{
    //Member api 에 접근 해서 데이터 로드
    List<Members>? memberList = await _userApi.fetchMembers();
    _members = memberList!;

    notifyListeners();
  }
}