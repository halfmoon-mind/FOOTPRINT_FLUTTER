import 'package:FOOTPRINT_FLUTTER/models/inDB/location.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:FOOTPRINT_FLUTTER/models/inDB/oneDayData.dart';

final oneDayBox = Hive.box('oneDayData');

class oneDayDataService {
  // createOneDayData(oneDayData oneday) {
  //   final oneDayData oneDayPath = oneDayData({
  //     DateTime.now(): [Location(id, timeData, latitude, longitude)]
  //   });
  // }
}
