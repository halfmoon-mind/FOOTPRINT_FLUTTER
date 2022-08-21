import 'package:FOOTPRINT_FLUTTER/models/inDB/location_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

final oneDayBox = Hive.box('oneDay');

class DisplayOneday {
  List<LocationModel> getPath(DateTime targetDay) {
    int boxIndex =
        targetDay.year * 10000 + targetDay.month * 100 + targetDay.day;
    List<LocationModel> locList = oneDayBox.get(boxIndex);
    return locList;
  }

  List<LocationModel> getPosition(DateTime targetDay) {
    int boxIndex =
        targetDay.year * 10000 + targetDay.month * 100 + targetDay.day;
    List<LocationModel> locList = oneDayBox.get(boxIndex);
    List<LocationModel> wentLocations = [];
    int count = 0;
    double prevLat = 0.0;
    double prevLon = 0.0;
    double nowLat;
    double nowLon;
    for (int i = 0; i < locList.length; i++) {
      nowLat = locList[i].latitude;
      nowLon = locList[i].longitude;
      if (i == 0) {
        prevLat = locList[i].latitude;
        prevLon = locList[i].longitude;
        continue;
      }
      if (prevLat == nowLat && prevLon == nowLon) {
        count += 1;
      } else {
        count = 0;
        prevLat = nowLat;
        prevLon = prevLon;
      }
      //25분 동안 동일한 자리에 있었을 경우
      if (count == 150) {
        wentLocations.add(LocationModel(
            latitude: prevLat,
            longitude: prevLon,
            timeData: locList[i].timeData));
      }
    }
    return wentLocations;
  }
}
