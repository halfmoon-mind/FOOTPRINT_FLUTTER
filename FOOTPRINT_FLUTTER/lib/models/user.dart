import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:hive_flutter/hive_flutter.dart';

part 'user.g.dart';

@HiveType(typeId: 3)
class UserModel {
  @HiveField(0)
  String uid;
  @HiveField(1)
  String email;
  @HiveField(2)
  String nickname;

  UserModel({
    required this.uid,
    required this.email,
    required this.nickname,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'nickname': nickname,
    };
  }

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        uid: json['uid'],
        email: json['email'],
        nickname: json['nickname'],
      );
}
