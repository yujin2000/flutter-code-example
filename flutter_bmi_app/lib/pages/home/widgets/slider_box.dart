import 'package:flutter/material.dart';

class SliderBox extends StatelessWidget {
  // required => 네임드 파라미터로 지정할 수 있음
  SliderBox({
    required this.lable,
    required this.value,
    required this.unit,
    required this.onChanged,
  });

  String lable;
  double value; // Slider 에서는 double 만 허용
  String unit;
  void Function(double value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // Row 내에서 밑으로 정렬, default 는 center
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              lable,
              style: TextStyle(fontSize: 20),
            ),
            Spacer(), // 간격
            Text(
              value.toStringAsFixed(0),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              unit,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Slider(
          value: value,
          onChanged: onChanged,
          min: 1,
          max: 300,
        ),
      ],
    );
  }
}
