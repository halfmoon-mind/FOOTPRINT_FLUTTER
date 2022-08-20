import 'package:hive/hive.dart';

part 'location_model.g.dart';

@HiveType(typeId: 2)
class LocationModel {
  @HiveField(0)
  DateTime timeData;
  @HiveField(1)
  double latitude;
  @HiveField(2)
  double longitude;

  LocationModel({
    required this.timeData,
    required this.latitude,
    required this.longitude,
  });

  // factory LocationModel.fromJson(Map<String, dynamic> json) =>
  //     _$LocationModelFromJson(json);
  // Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
