// 필요한 Flutter 머티리얼 패키지를 가져옵니다.
import 'package:flutter/material.dart';
// 사용자 정의 글꼴을 사용하기 위해 Google Fonts 패키지를 가져옵니다.
import 'package:google_fonts/google_fonts.dart';

// Google Fonts로 사용자 정의된 TextTheme을 정의하고 반환하는 함수입니다.
TextTheme textTheme() {
  return TextTheme(
    // DisplayLarge 텍스트 스타일.
    displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    // 굵은 글꼴 무게가 있는 DisplayMedium 텍스트 스타일.
    displayMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    // BodyLarge 텍스트 스타일.
    bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    // BodyMedium 텍스트 스타일.
    bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    // TitleMedium 텍스트 스타일.
    titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}

// AppBarTheme을 정의하고 반환하는 함수입니다.
AppBarTheme appTheme() {
  return AppBarTheme(
    // 제목이 중앙에 위치해야 하는지 여부.
    centerTitle: false,
    // AppBar의 배경색.
    color: Colors.white,
    // AppBar의 높이. 여기서는 평평한 모양을 위해 0으로 설정되었습니다.
    elevation: 0.0,
    // AppBar에서 제목의 텍스트 스타일.
    titleTextStyle: GoogleFonts.nanumGothic(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

// 앱의 전반적인 테마를 정의하고 반환하는 함수입니다.
ThemeData theme() {
  return ThemeData(
    // Scaffold 위젯의 배경색.
    scaffoldBackgroundColor: Colors.white,
    // 앱 전체에 적용되는 텍스트 테마.
    textTheme: textTheme(),
    appBarTheme: appTheme(),
    primaryColor: Colors.orange,
    // AppBar에 대한 테마 커스터마이징.
  );
}
