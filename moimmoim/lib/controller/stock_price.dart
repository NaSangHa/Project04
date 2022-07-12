//json file
//{"response":{"header":{"resultCode":"00","resultMsg":"NORMAL SERVICE."},"body":{"numOfRows":10,"pageNo":1,"totalCount":1,"items":{"item":[{"basDt":"20220622","srtnCd":"005930","isinCd":"KR7005930003","itmsNm":"삼성전자","mrktCtg":"KOSPI","clpr":"57600","vs":"-900","fltRt":"-1.54","mkp":"59000","hipr":"59100","lopr":"57600","trqu":"23334687","trPrc":"1360076149300","lstgStCnt":"5969782550","mrktTotAmt":"343859474880000"}]}}}}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class StockPrice extends StatelessWidget {
  const StockPrice({Key? key}) : super(key: key);

  void _getRequest() async {
    var url = Uri.parse(
        "https://api.odcloud.kr/api/GetStockSecuritiesInfoService/v1/getStockPriceInfo?numOfRows=10&resultType=json&beginBasDt=20220622&likeSrtnCd=005930&isinCd=KR7005930003&itmsNm=%EC%82%BC%EC%84%B1%EC%A0%84%EC%9E%90&likeItmsNm=%EC%A0%84%EC%9E%90&serviceKey=ATX31MyupZgCny6bebGZ3phDMsxsMIFy3wbvgGLyBNn6Ea58CVYJQ9xIS%2BBX1l7Dp%2FcOCpKbYy6nEKk1eJ5VQA%3D%3D");
    http.Response response =
        await http.get(url, headers: {"Accept": "application/json"});
    var statusCode = response.statusCode;
    var responseHeaders = response.headers;
    var responseBody = utf8.decode(response.bodyBytes);

    print("statusCode: $statusCode");
    print("responseBody : $responseBody");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

    );
  }
}


class IUser {
  String? uid;
  String? nickname;
  String? thumbnail;
  String? description;
  IUser({
    this.uid,
    this.nickname,
    this.thumbnail,
    this.description,
  });

  factory IUser.fromJson(Map<String, dynamic> json) {
    return IUser(
      uid: json['uid'] == null ? '' : json['uid'] as String,
      nickname: json['nickname'] == null ? '' : json['nickname'] as String,
      thumbnail: json['thumbnail'] == null ? '' : json['thumbnail'] as String,
      description:
          json['description'] == null ? '' : json['description'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'nickname': nickname,
      'thumbnail': thumbnail,
      'description': description,
    };
  }

  IUser copyWith({
    String? uid,
    String? nickname,
    String? thumbnail,
    String? description,
  }) {
    return IUser(
      uid: uid ?? this.uid,
      nickname: nickname ?? this.nickname,
      thumbnail: thumbnail ?? this.thumbnail,
      description: description ?? this.description,
    );
  }
}
