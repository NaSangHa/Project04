import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:projectapp/models/userdata.dart';

class UserApi{
  Future<List<Members>?> fetchMembers() async {
    var url = Uri.parse("http://192.168.0.84:8081/memberjson");
    final response = await http.get(url);

    //호출 응답 200
    if (response.statusCode == 200) {

      final body = convert.utf8.decode(response.bodyBytes);

      Map<String,dynamic> result = convert.json.decode(body);
      final jsonMember = result['members'];
      print(jsonMember);
      if (jsonMember != null){
        List<dynamic> list = jsonMember;

        return list.map<Members>(((e) => Members.fromJson(e))).toList();
      }

    }

    // 테스트
    //   return (jsonDecode(response.body)as List).map((e) =>
    //   Members.fromJson(e)).toList();
    // } else {
    //   throw Exception("failed to load user data");

    // }
  }
}