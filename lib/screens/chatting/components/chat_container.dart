import 'package:carrot_market_clone/models/chat_message.dart'; // 채팅 메시지 모델 가져오기
import 'package:carrot_market_clone/screens/components/image_container.dart'; // 이미지 컨테이너 컴포넌트 가져오기
import 'package:carrot_market_clone/theme.dart'; // 테마 설정 가져오기
import 'package:flutter/cupertino.dart'; // Cupertino 스타일 위젯 사용을 위해 가져오기
import 'package:flutter/material.dart'; // Material 디자인 위젯 사용을 위해 가져오기

class ChatContainer extends StatelessWidget {
  const ChatContainer({
    Key? key,
    required this.chatMessage, // 필수적으로 chatMessage 인자를 받음
  }) : super(key: key);

  final ChatMessage chatMessage; // 채팅 메시지 객체 선언

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)), // 하단에 그레이 색상의 경계선 추가
      ),
      height: 100, // 컨테이너 높이 설정
      child: Padding(
        padding: const EdgeInsets.all(20), // 모든 측면에 20의 패딩 적용
        child: Row(
          children: [
            ImageContainer(borderRadius: 25, imageURl: chatMessage.profileImage, width: 50, height: 50), // 프로필 이미지 컨테이너
            const SizedBox(width: 16.0), // 이미지와 텍스트 사이의 간격 설정
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // 텍스트를 시작 부분에서 정렬
                children: [
                  const Spacer(), // 유연한 공간을 위쪽에 배치
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: chatMessage.sender, // 보내는 사람 이름
                            style: textTheme().bodyLarge // 텍스트 스타일 적용
                        ),
                        const WidgetSpan(
                          child: SizedBox(width: 8), // 이름과 위치 사이의 공간 설정
                        ),
                        TextSpan(
                          text: chatMessage.location, // 위치 정보
                        ),
                        TextSpan(
                          text: ' ${chatMessage.sendDate}', // 메시지 전송 날짜
                        ),
                      ],
                    ),
                  ),
                  const Spacer(), // 이름, 위치, 날짜와 메시지 사이의 공간
                  Text(
                    chatMessage.message, // 메시지 내용
                    style: textTheme().titleMedium, // 텍스트 스타일 적용
                    overflow: TextOverflow.ellipsis, // 내용이 길 경우 말줄임표로 표시
                  ),
                  const Spacer(), // 하단에 유연한 공간 배치
                ],
              ),
            ),
            Visibility(
              visible: chatMessage.imageUri != null, // 추가 이미지가 있는 경우에만 보임
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0), // 이미지 주변 패딩 적용
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // 이미지 모서리 둥글게 처리
                  child: ImageContainer(
                    width: 50,
                    height: 50,
                    borderRadius: 8,
                    imageURl: chatMessage.imageUri ?? '', // 이미지 URL, 없을 경우 빈 문자열
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
