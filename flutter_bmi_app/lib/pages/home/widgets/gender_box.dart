import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  GenderBox(this.isMale, this.onChanged);

  bool isMale;
  void Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        gender(context, Icons.male, 'MALE', isMale, true),
        SizedBox(width: 8),
        gender(context, Icons.female, 'FEMALE', !isMale, false),
      ],
    );
  }

  Widget gender(
    BuildContext context,
    IconData icon,
    String text,
    bool selected, // 선택되었는지 체크
    bool isMaleBox,
  ) {
    return Expanded(
      // 터치 이벤트를 받아오기 위해 Container 를 GestureDetector 로 감싼다
      child: GestureDetector(
        onTap: () {
          onChanged(isMaleBox);
        },
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(
              // Theme 내에서 지정한 거 가져오기
              color: Theme.of(context).dividerColor,
            ),
          ),
          child: Stack(
            children: [
              // Stack 내에서 위치 지정하기 위해 사용
              Positioned(
                top: 10,
                left: 10,
                child: Opacity(
                  opacity: 0.3, // 0~1 까지의 투명도 설정
                  child: Icon(
                    icon,
                    size: 80,
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: Opacity(
                  opacity: selected ? 1 : 0.3,
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
