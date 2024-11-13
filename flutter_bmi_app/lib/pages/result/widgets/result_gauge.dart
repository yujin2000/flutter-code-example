import 'dart:math';

import 'package:flutter/material.dart';

class ResultGauge extends StatelessWidget {
  ResultGauge(this.bmi);
  double bmi;

  @override
  Widget build(BuildContext context) {
    // CircularProgressIndicator => 로딩 이미지를 출력하지만 value 값을 지정하여 게이지처럼 보여준다.
    return Stack(
      // Text 를 center 로 해도 되지만 전체적으로 center 값을 주고 싶으면 alignment 사용
      alignment: Alignment.center,
      children: [
        // SizedBox.square 는 가로 세로 동일한 값을 주고 싶을 땐 dimension 을 지정하면 된다.
        SizedBox.square(
          dimension: 250, // == width: 250, height: 250
          child: CircularProgressIndicator(
            value: 1,
            color: Theme.of(context).dividerColor,
          ),
        ),
        SizedBox.square(
          dimension: 250,
          child: CircularProgressIndicator(
            value: min(bmi / 35, 1),
            color: Theme.of(context).highlightColor,
          ),
        ),
        Text(bmi.toStringAsFixed(1), style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
