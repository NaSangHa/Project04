import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class GroupApi extends StatelessWidget {
  const GroupApi({Key? key}) : super(key: key);

   void _getRequest() async {
    var url = Uri.parse(
        "http://localhost:8081/meetjson");
    http.Response response =
        await http.get(url, headers: {"meets": "["});
    var statusCode = response.statusCode;
    var responseHeaders = response.headers;
    var responseBody = utf8.decode(response.bodyBytes);

    print("statusCode: $statusCode");
    print("responseBody : $responseBody");
    print(responseBody);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}