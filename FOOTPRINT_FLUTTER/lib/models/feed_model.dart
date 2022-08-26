import 'package:json_annotation/json_annotation.dart';

part 'feed_model.g.dart';

@JsonSerializable(createFactory: true, checked: true)
class FeedModel {
  String category;
  String profileImg;
  String nickname;
  String location;
  String feedTitle;
  String footprintUrl;
  List<String> content;
  List<String> contentImg;
  List<int> emotionCount;

  FeedModel({
    required this.category,
    required this.profileImg,
    required this.nickname,
    required this.location,
    required this.feedTitle,
    required this.footprintUrl,
    required this.content,
    required this.contentImg,
    required this.emotionCount,
  });

  factory FeedModel.fromJson(Map<String, dynamic> json) =>
      _$FeedModelFromJson(json);
  Map<String, dynamic> toJson() => _$FeedModelToJson(this);
}
