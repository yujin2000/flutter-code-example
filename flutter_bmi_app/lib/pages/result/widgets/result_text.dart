import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  ResultText(this.bmi);
  double bmi;

  // 35 이상: EXTREMELY OBESE
  // 30 이상 35 미만: OBESE
  // 25 이상 30 미만: OVERWEIGHT
  // 18.5 이상 25 미만: NORMAL
  // 18.5 미만: UNDERWEIGHT
  String getResultText() {
    if (bmi >= 35) {
      return 'EXTREMELY OBESE';
    } else if (bmi >= 30) {
      return 'OBESE';
    } else if (bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getResultRange() {
    if (bmi >= 35) {
      return '<= 35';
    } else if (bmi >= 30) {
      return '30 - 35';
    } else if (bmi >= 25) {
      return '25 - 30';
    } else if (bmi >= 18.5) {
      return '18.5 - 25';
    } else {
      return '<= 18.5';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Row 로 해도 되지만 RichText 로 하는 이유는 여러가지 style 이 혼합된 Text 위젯을 만들 때 사용
    return RichText(
      text: TextSpan(
        // RichText 으로 텍스트 사이즈를 한 번만 선언이 가능
        style: TextStyle(
          fontSize: 18,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
        children: [
          TextSpan(text: 'Result: '),
          TextSpan(
            text: getResultText(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).highlightColor,
            ),
          ),
          TextSpan(text: ' BMI ${getResultRange()}'),
        ],
      ),
    );
  }
}
