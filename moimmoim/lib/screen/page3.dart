import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectapp/common/color_constants.dart';
import 'package:projectapp/controller/stock_price.dart';
import '../widgets/ticker.dart';
import 'package:http/http.dart' as http;

class Page3 extends StatefulWidget{
  String data ='';

  Page3({Key? key}) : super(key:key);
  
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
//3페이지는 차트 검색 가능하게 넣을 예정

  @override
  Widget build(BuildContext context) {
    print('Page3');
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Stock&Talk',
            style: GoogleFonts.expletusSans(
              fontSize: 29,              
              ),
            ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.search_outlined),            
            ),
          ),        
        ]
      ),      
      body:
        Column(
          children: [
            Container(

            ),
            Container(

            ),

            
            ElevatedButton(
              child: const Text('HTTP GET', style: TextStyle(fontSize: 30.0)),
              onPressed: () {
                _getRequest;
              },
            ),            
          ],
        )
    ); 
  }
 
}

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
