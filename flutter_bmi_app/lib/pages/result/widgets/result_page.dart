import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/result/widgets/result_gauge.dart';
import 'package:flutter_bmi_app/pages/result/widgets/result_text.dart';

class ResultPage extends StatelessWidget {
  // 2번 방법) 생성자할 때 값을 받아옴
  ResultPage(this.bmi);
  double bmi;

  @override
  Widget build(BuildContext context) {
    // 1번 방법) HomePage 에서 넘긴 bmi 값은 ModalRoute 으로 받아옴
    // final bmi = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            ResultGauge(bmi),
            SizedBox(height: 50),
            ResultText(bmi),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: OutlinedButton(
                onPressed: () {},
                child: Text('RECALCULATE'),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
