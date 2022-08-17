import 'package:hive/hive.dart';
import 'package:FOOTPRINT_FLUTTER/models/inDB/location_model.dart';

part 'oneDayData.g.dart';

@HiveType(typeId: 1)
class oneDayData {
  @HiveField(0)
  Map<DateTime, List<LocationModel>> oneDay;

  oneDayData(this.oneDay);
}
