import 'package:carrot_market_clone/models/icon_menu.dart'; // 아이콘 메뉴 데이터 모델
import 'package:carrot_market_clone/screens/my_carrot/components/card_icon_menu.dart'; // 아이콘 메뉴 카드 위젯
import 'package:carrot_market_clone/screens/my_carrot/components/my_carrot_header.dart'; // 나의 당근 헤더 컴포넌트
import 'package:flutter/material.dart'; // 플러터 머티리얼 디자인 라이브러리

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({super.key}); // 생성자

  @override
  Widget build(BuildContext context) {
    // Scaffold는 기본적인 머티리얼 디자인 레이아웃 구조를 제공합니다.
    return Scaffold(
      backgroundColor: Colors.grey[100], // 배경색 설정
      appBar: AppBar(
        title: const Text('나의 당근'), // 앱 바의 타이틀
        actions: [
          IconButton(
            icon: Icon(Icons.settings), // 설정 아이콘
            onPressed: () {}, // 아이콘 버튼 클릭 이벤트 처리
          ),
        ],
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0.5), // 앱 바 하단 크기 설정
            child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey)), // 앱 바 하단에 구분선 추가
      ),
      body: ListView(
        children: [
          MyCarrotHeader(), // 나의 당근 헤더 컴포넌트
          const SizedBox(height: 8.0), // 세로 간격
          CardIconMenu(iconMenuList: iconMenu1), // 아이콘 메뉴 카드
          const SizedBox(height: 8.0), // 세로 간격
          CardIconMenu(iconMenuList: iconMenu2), // 아이콘 메뉴 카드
          SizedBox(height: 8.0), // 세로 간격
          CardIconMenu(iconMenuList: iconMenu3), // 아이콘 메뉴 카드
        ],
      ),
    );
  }
}
