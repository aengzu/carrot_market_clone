import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 상태를 관리하지 않기 때문에 StatelessWidget을 상속받은 검색 텍스트 필드 커스텀 위젯입니다.
class SearchTextField extends StatelessWidget {
  // super 키워드를 사용하여 key 매개변수를 받는 생성자입니다.
  const SearchTextField({super.key});

  @override
  // 이 위젯이 사용자 인터페이스의 어떤 부분을 나타내는지 설명하는 build 메소드입니다.
  Widget build(BuildContext context) {
    // 패딩, 마진, 테두리 또는 색상을 위해 사용되는 Container 위젯입니다.
    return Container(
      // 사용자 입력을 받기 위한 TextField 위젯이 자식으로 있습니다.
      child: TextField(
        // TextField가 포커스될 때의 커서 색상입니다.
        cursorColor: Colors.grey,
        // TextField의 데코레이션을 설정합니다.
        decoration: InputDecoration(
          // TextField가 비활성화될 때의 테두리 스타일입니다.
          disabledBorder: _buildOutLineInputBorder(),
          // 일반적인 테두리 스타일입니다.
          enabledBorder: _buildOutLineInputBorder(),
          // TextField가 포커스될 때의 테두리 스타일입니다.
          focusedBorder: _buildOutLineInputBorder(),
          // 배경색을 채울 수 있도록 설정되어 있습니다.
          filled: true,
          // 활성화될 때의 배경 색상입니다.
          fillColor: Colors.grey[200],
          // TextField 시작 부분에 표시되는 아이콘입니다.
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          // TextField 내부의 패딩입니다.
          contentPadding:
          const EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 0),
          // 플레이스홀더 텍스트입니다.
          hintText: '만년동 주변 가게를 찾아 보세요.',
          // 플레이스홀더 텍스트의 스타일입니다.
          hintStyle: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  // TextField의 테두리 스타일을 일관성 있게 만들기 위해 사용되는 도우미 메소드입니다.
  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
      // 색상과 너비로 구성된 테두리 사이드 설정입니다.
      borderSide: const BorderSide(width: 0.5, color: Color(0xffd4d5dd)),
      // OutlineInputBorder의 테두리 반경입니다.
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
