import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.pinkAccent,
    brightness: Brightness.light,
  ),
  // 테마에는 Container 의 색상을 지정하는 옵션은 없음
  dividerColor: Colors.black38, // Container 색상 정하기 위해 추가
  highlightColor: Colors.pinkAccent, // 로딩되는 거 색상 지정
  sliderTheme: SliderThemeData(
    // Slider 지정하기 위해 추가
    thumbColor: Colors.pinkAccent,
    activeTrackColor: Colors.black38,
    inactiveTrackColor: Colors.black38,
    trackHeight: 1, // Slider 두께
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      // WidgetStatePropertyAll => 버튼 상태 상관 없이 동일한 스타일을 보여줌
      // WidgetStateProperty => 버튼 눌렀을 때, 커서를 가져다 댔을 때 등 상태별로 스타일을 정의할 할 수있음
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
      backgroundColor: WidgetStatePropertyAll(Colors.pinkAccent), // button 색상
      foregroundColor: WidgetStatePropertyAll(Colors.white), // text 색상
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
      side: WidgetStatePropertyAll(
          BorderSide(color: Colors.black38)), // button 테두리 색
      foregroundColor: WidgetStatePropertyAll(Colors.black), // text 색상
    ),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.pinkAccent,
    brightness: Brightness.dark,
  ),
  dividerColor: Colors.white38,
  highlightColor: Colors.pinkAccent,
  sliderTheme: SliderThemeData(
    // Slider 지정하기 위해 추가
    thumbColor: Colors.pinkAccent,
    activeTrackColor: Colors.white38,
    inactiveTrackColor: Colors.white38,
    trackHeight: 1, // Slider 두께
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      // WidgetStatePropertyAll => 버튼 상태 상관 없이 동일한 스타일을 보여줌
      // WidgetStateProperty => 버튼 눌렀을 때, 커서를 가져다 댔을 때 등 상태별로 스타일을 정의할 할 수있음
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
      backgroundColor: WidgetStatePropertyAll(Colors.pinkAccent), // button 색상
      foregroundColor: WidgetStatePropertyAll(Colors.white), // text 색상
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
      side: WidgetStatePropertyAll(BorderSide(color: Colors.white38)),
      foregroundColor: WidgetStatePropertyAll(Colors.white), // text 색상
    ),
  ),
);
