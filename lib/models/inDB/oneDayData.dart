import 'package:hive/hive.dart';
import 'package:FOOTPRINT_FLUTTER/models/inDB/location.dart';

part 'oneDayData.g.dart';

@HiveType(typeId: 0)
class oneDayData {
  @HiveField(0)
  Map<DateTime, List<Location>> oneDay;

  oneDayData(this.oneDay);
}
