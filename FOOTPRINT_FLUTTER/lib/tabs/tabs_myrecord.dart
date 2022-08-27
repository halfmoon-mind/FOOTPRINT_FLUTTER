import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:FOOTPRINT_FLUTTER/component/map_component.dart';

class MyrecodeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime nowDate = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Footprints',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 180,
                    child: MapViewApp(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${nowDate.year}.${nowDate.month}.${nowDate.day}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            '서울시',
                            style: TextStyle(fontSize: 18),
                            overflow: TextOverflow.clip,
                          ),
                          const Text(
                            '이수 / 홍대 / 숭실대',
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 180,
                    child: MapViewApp(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${nowDate.year}.${nowDate.month}.${nowDate.day - 1}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            '춘천시',
                            style: TextStyle(fontSize: 18),
                            overflow: TextOverflow.clip,
                          ),
                          const Text(
                            '효자동 / 송암동 / 중도동 / 삼천동 / 석사동 / 우두동 / 효자동 / 칠전동',
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 180,
                    child: MapViewApp(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${nowDate.year}.${nowDate.month}.${nowDate.day - 2}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            '강릉시',
                            style: TextStyle(fontSize: 18),
                            overflow: TextOverflow.clip,
                          ),
                          const Text(
                            '교동 / 송정동 / 학동 / 남항진동 / 초당동 / 난곡동 / 대전동 / 회산동 / 유천동 / 지변동 / 성남동 / 유산동',
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 180,
                    child: MapViewApp(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${nowDate.year}.${nowDate.month}.${nowDate.day - 3}',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            '이수 / 홍대 / 숭실대 / 상도 / 추가 / 추가 / 추가 / 추가',
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
