import 'package:hive_flutter/hive_flutter.dart';
// import 'package:FOOTPRINT_FLUTTER/models/inDB/oneDayData.dart';
import 'package:FOOTPRINT_FLUTTER/models/inDB/location_model.dart';

final oneDayBox = Hive.box('oneDay');

class oneDayDataService {
  addOneDayData(double? lat, double? lon) {
    DateTime currentTime = DateTime.now();
    currentTime =
        DateTime(currentTime.year, currentTime.month, currentTime.day);
    //4시 이전의 값이면 이전 일로 넘겨서 저장
    if (currentTime.isBefore(
        DateTime(currentTime.year, currentTime.month, currentTime.day, 4))) {
      currentTime = currentTime.subtract(const Duration(days: 1));
    }
    //box에서 받아올 index값을 지정(해당 날의 데이터만 불러오기)
    int boxIndex =
        currentTime.year * 10000 + currentTime.month * 100 + currentTime.day;
    //오늘 데이터가 없는 경우에는?
    if (lat == null || lon == null) {
      print('NULL_LOCATION_DATA!');
    } else {
      //null이라면(값이 없었다!)
      if (oneDayBox.get(boxIndex) == null) {
        oneDayBox.put(boxIndex, [
          LocationModel(timeData: DateTime.now(), latitude: lat, longitude: lon)
        ]);
      }
      //이미 데이터가 들어 있다면
      else {
        List locList = oneDayBox.get(boxIndex);
        locList.add(LocationModel(
            timeData: DateTime.now(), latitude: lat, longitude: lon));
        oneDayBox.put(boxIndex, locList);
      }
    }
  }

  printOneDayData() {
    // DateTime currentTime = DateTime.now();
    // LocationModel Data = oneDayBox
    //     .get(DateTime(currentTime.year, currentTime.month, currentTime.day));
    // print(
    //     'HIVEDATA : ${Data.latitude}, ${Data.longitude}, time : ${Data.timeData}');
  }
}
