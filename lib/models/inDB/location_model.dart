import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  @JsonKey(includeIfNull: false)
  String id;
  @JsonKey(includeIfNull: false)
  DateTime timeData;
  @JsonKey(includeIfNull: false)
  double latitude;
  @JsonKey(includeIfNull: false)
  double longitude;

  LocationModel({
    required this.id,
    required this.timeData,
    required this.latitude,
    required this.longitude,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
