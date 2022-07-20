class Usersdata {
  List<Members>? members;

  Usersdata({this.members});

  Usersdata.fromJson(Map<String, dynamic> json) {
    if (json['members'] != null) {
      members = <Members>[];
      json['members'].forEach((v) {
        members!.add(new Members.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.members != null) {
      data['members'] = this.members!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Members {
  String? follower;
  String? authorith;
  String? pw;
  String? favroite;
  String? message;
  String? type;
  String? enabled;
  String? phone;
  String? name;
  String? id;
  String? category;
  String? profileimg;
  String? email;
  String? introduction;

  Members(
      {this.follower,
      this.authorith,
      this.pw,
      this.favroite,
      this.message,
      this.type,
      this.enabled,
      this.phone,
      this.name,
      this.id,
      this.category,
      this.profileimg,
      this.email,
      this.introduction});

  Members.fromJson(Map<String, dynamic> json) {
    follower = json['follower'];
    authorith = json['authorith'];
    pw = json['pw'];
    favroite = json['favroite'];
    message = json['message'];
    type = json['type'];
    enabled = json['enabled'];
    phone = json['phone'];
    name = json['name'];
    id = json['id'];
    category = json['category'];
    profileimg = json['profileimg'];
    email = json['email'];
    introduction = json['introduction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['follower'] = this.follower;
    data['authorith'] = this.authorith;
    data['pw'] = this.pw;
    data['favroite'] = this.favroite;
    data['message'] = this.message;
    data['type'] = this.type;
    data['enabled'] = this.enabled;
    data['phone'] = this.phone;
    data['name'] = this.name;
    data['id'] = this.id;
    data['category'] = this.category;
    data['profileimg'] = this.profileimg;
    data['email'] = this.email;
    data['introduction'] = this.introduction;
    return data;
  }
}