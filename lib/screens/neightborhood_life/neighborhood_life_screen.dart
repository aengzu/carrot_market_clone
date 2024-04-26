import 'package:carrot_market_clone/models/neighborhood_life.dart';
import 'package:carrot_market_clone/screens/neightborhood_life/components/life_body.dart';
import 'package:carrot_market_clone/screens/neightborhood_life/components/life_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/appbar_preffered_size.dart'; // 앱 바의 높이를 정의한 커스텀 위젯을 가져옵니다.

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({super.key}); // 생성자를 정의합니다.

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 스캐폴드 위젯을 반환합니다.
      appBar: AppBar( // 앱 바를 설정합니다.
        title: Text('동네생활'), // 앱 바의 타이틀을 설정합니다.
        actions: [ // 앱 바의 액션 아이콘들을 설정합니다.
          IconButton(icon: Icon(CupertinoIcons.search), onPressed: () {}), // 검색 아이콘 버튼
          IconButton(icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle), onPressed: () {}), // 새 글 작성 아이콘 버튼
          IconButton(icon: Icon(CupertinoIcons.bell), onPressed: () {},) // 알림 아이콘 버튼
        ],
        bottom: appBarBottomLine(), // 앱 바의 하단 라인을 설정합니다. (사용자 정의 함수 호출)

      ),
      body: ListView( // 목록을 보여주는 리스트 뷰를 설정합니다.
        children: [
          const LifeHeader(), // 생활 헤더 위젯을 추가합니다. (상수로 선언된 위젯)
          ...List.generate( // neighborhoodLifeList의 요소들을 반복하면서 LifeBody 위젯을 생성합니다.
            neighborhoodLifeList.length, // 반복할 횟수는 neighborhoodLifeList의 길이로 지정합니다.
                (index) => Padding( // 각 요소에 대한 패딩을 추가합니다.
              padding: const EdgeInsets.only(bottom: 8.0), // 아래쪽으로 8.0만큼의 패딩을 추가합니다.
              child: LifeBody( // 생활 목록을 보여주는 위젯을 생성합니다.
                neighborhoodLife: neighborhoodLifeList[index], // 인덱스에 해당하는 생활 목록을 전달합니다.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
