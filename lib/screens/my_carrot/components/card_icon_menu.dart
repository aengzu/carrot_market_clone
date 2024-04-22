import 'package:flutter/material.dart'; // 플러터 머티리얼 디자인 라이브러리를 가져옵니다.
import '../../../models/icon_menu.dart'; // 아이콘 메뉴 데이터 모델을 가져옵니다.

class CardIconMenu extends StatelessWidget {
  // 아이콘 메뉴 리스트를 위한 프로퍼티 선언
  final List<IconMenu> iconMenuList; // IconMenu 타입의 리스트를 받습니다.

  // 생성자: 아이콘 메뉴 리스트를 필수 인자로 받습니다.
  const CardIconMenu({required this.iconMenuList, super.key});

  @override
  Widget build(BuildContext context) {
    // Card 위젯: 카드 형태의 UI를 제공
    return Card(
      elevation: 0.5, // 카드의 그림자 깊이를 0.5로 설정하여 약간의 입체감을 줍니다.
      margin: EdgeInsets.zero, // 카드의 외부 여백을 0으로 설정하여 주변과 붙어있게 합니다.
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)), // 카드의 모서리를 둥글게 처리하지 않습니다.

      // Padding: 카드 내부에 여백을 추가
      child: Padding(
        padding: const EdgeInsets.all(16.0), // 모든 방향으로 16.0의 패딩을 추가합니다.
        child: Column(
          children: List.generate( // 리스트를 동적으로 생성하는 메소드
            iconMenuList.length, // 리스트의 길이만큼 요소를 생성합니다.
                (index) => _buildRowIconItem(
                iconMenuList[index].title, iconMenuList[index].iconData), // 각 아이콘 메뉴 항목에 대한 위젯을 생성
          ),
        ),
      ),
    );
  }

  // _buildRowIconItem 메소드: 아이콘과 텍스트로 구성된 행 아이템을 생성
  Widget _buildRowIconItem(String title, IconData iconData) {
    return Container(
        height: 50, // 컨테이너 높이를 50으로 설정
        child: Row(
          children: [
            Icon(iconData, size: 17), // 아이콘을 생성하며, 크기는 17로 설정
            const SizedBox(width: 20), // 아이콘과 텍스트 사이의 공간을 20으로 설정
            Text(title) // 텍스트를 표시
          ],
        )
    );
  }
}
