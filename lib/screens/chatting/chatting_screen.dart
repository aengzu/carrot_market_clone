import 'package:carrot_market_clone/models/chat_message.dart'; // 채팅 메시지 모델 파일을 가져옵니다.
import 'package:carrot_market_clone/screens/components/appbar_preffered_size.dart'; // 사용자 정의 AppBar 크기 조절 컴포넌트를 가져옵니다.
import 'package:flutter/material.dart'; // 플러터 머티리얼 디자인 라이브러리를 가져옵니다.

import '../components/image_container.dart'; // 이미지를 담는 컨테이너 컴포넌트를 가져옵니다.
import 'components/chat_container.dart'; // 채팅 메시지를 담는 컨테이너 컴포넌트를 가져옵니다.

class ChattingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold를 사용하여 기본적인 레이아웃 구조를 제공합니다.
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'), // 앱바의 제목 설정
        bottom: appBarBottomLine(), // 앱바 하단에 선을 그어 구분합니다.
      ),
      body: ListView(
        children: List.generate(chatMessageList.length, // chatMessageList의 길이만큼 반복하여 위젯을 생성합니다.
              (index) => ChatContainer(chatMessage: chatMessageList[index]), // 각 채팅 메시지에 대한 ChatContainer를 생성합니다.
        ),
      ),
    );
  }
}
