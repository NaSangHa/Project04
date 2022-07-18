import 'package:cloud_firestore/cloud_firestore.dart';

//DAO

class User {
  final String email;
  final String profileImg; //photoURL
  final String name;
  final String category;
  final List follower;
  List? following;
  String? pw; // 암호
  String? phone; // CELL PHONE
  String? authority; // 페이지원한
  String? enabled;  // 사이트 관리자
  String? message; // 알람표기
  String? favorite; // 관심목록
  String? introduction; //자기소개


  User(
      {required this.name,
        required this.profileImg,
        required this.email,
        required this.category,
        required this.follower});

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      name: snapshot["username"],
      email: snapshot["email"],
      profileImg: snapshot["photoUrl"],
      category: snapshot["category"],
      follower: snapshot["follower"],
    );
  }

  Map<String, dynamic> toJson() =>
    {"email": email,
      "pw": pw,
      "phone" : phone,
      "name": name,
      "category": category,
      "follower": follower,
      "profileImg": profileImg,
      "authority": authority,
      "enabled": enabled,
      "message": message,
      "favorite": favorite,
      "introduction": introduction
  };
}
