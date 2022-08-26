// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedModel _$FeedModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'FeedModel',
      json,
      ($checkedConvert) {
        final val = FeedModel(
          category: $checkedConvert('category', (v) => v as String),
          profileImg: $checkedConvert('profileImg', (v) => v as String),
          nickname: $checkedConvert('nickname', (v) => v as String),
          location: $checkedConvert('location', (v) => v as String),
          feedTitle: $checkedConvert('feedTitle', (v) => v as String),
          footprintUrl: $checkedConvert('footprintUrl', (v) => v as String),
          content: $checkedConvert('content',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          contentImg: $checkedConvert('contentImg',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          emotionCount: $checkedConvert('emotionCount',
              (v) => (v as List<dynamic>).map((e) => e as int).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$FeedModelToJson(FeedModel instance) => <String, dynamic>{
      'category': instance.category,
      'profileImg': instance.profileImg,
      'nickname': instance.nickname,
      'location': instance.location,
      'feedTitle': instance.feedTitle,
      'footprintUrl': instance.footprintUrl,
      'content': instance.content,
      'contentImg': instance.contentImg,
      'emotionCount': instance.emotionCount,
    };
