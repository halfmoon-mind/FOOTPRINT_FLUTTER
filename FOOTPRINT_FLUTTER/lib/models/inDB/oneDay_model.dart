import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:FOOTPRINT_FLUTTER/models/inDB/location_model.dart';

part 'oneDay_model.g.dart';

@HiveType(typeId: 1)
class oneDayModel {
  @HiveField(0)
  List<LocationModel> oneDay;

  oneDayModel(this.oneDay);
}
