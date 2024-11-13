import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatBottom extends StatelessWidget {
  SeatBottom(this.selectedRow, this.selectedCol);

  int? selectedRow;
  int? selectedCol;

  @override
  Widget build(BuildContext context) {
    return Container(
      // 컨테이너는 크기를 지정하지 않으면 child 값에 맞춰서 사이즈가 만들어진다
      height: 200,
      width: double.infinity, // 가로로 펴질 수 있을때까지
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            selectedRow == null && selectedCol == null
                ? '선택된 좌석 없음'
                : '$selectedRow - $selectedCol',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 56,
            child: ElevatedButton(
              // 버튼 클릭하면
              onPressed: () {
                if (selectedRow != null && selectedCol != null) {
                  // ios alert 창 뜸
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                          title: Text('예약 확인'),
                          content: Text('예약 하시겠습니까?'),
                          actions: [
                            CupertinoDialogAction(
                              isDefaultAction: true, // 취소
                              // 취소 버튼 누르면
                              onPressed: () {
                                Navigator.of(context).pop(); // 뒤로가기
                              },
                              child: Text('취소'),
                            ),
                            CupertinoDialogAction(
                              isDestructiveAction: true, // 확인
                              onPressed: () {},
                              child: Text('확인'),
                            ),
                          ]);
                    },
                  );
                }
              },
              child: Text('Book now'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
