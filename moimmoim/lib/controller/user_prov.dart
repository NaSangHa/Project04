import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projectapp/controller/service/userapi.dart';
import 'package:projectapp/models/userdata.dart';


class UserProvider extends ChangeNotifier{
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