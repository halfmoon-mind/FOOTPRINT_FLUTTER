import 'package:cloud_firestore/cloud_firestore.dart';

class USER {
  late String? uid;
  late String? email;
  late String? id;
  late String? nickname;


  USER({
    this.uid,
    this.email,
    this.id,
    this.nickname,

  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'id': id,
      'nickname': nickname,
    };
  }

  static USER fromJson(Map<String, dynamic> json) => USER(
        uid: json['uid'],
        email: json['email'],
        id: json['id'],
        nickname: json['nickname'],
      );
}
