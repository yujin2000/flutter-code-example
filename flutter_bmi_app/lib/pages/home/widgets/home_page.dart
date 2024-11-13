import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/home/widgets/gender_box.dart';
import 'package:flutter_bmi_app/pages/home/widgets/slider_box.dart';
import 'package:flutter_bmi_app/pages/result/widgets/result_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

// 상태 값 받아오는 순서
// 1. HomePage 클래스를 StatefulWidget 로 변경
// 2. 변경될 값들을 변수로 지정하고 각 변수가 변경될 수 있도록 이벤트 함수 생성
// 3. 변수를 받아올 클래스에도 동일하게 변수, 함수 선언(ex gender_box 클래스에서 isMale, onChanged 등)
// 4. 위젯 클래스에서 생성자 만들고 생성자에서 받아온 값들을 변경할 데이터와 이벤트에 배치
// 5. HomePage 클래스에서 위젯 생성자에 변수와 함수 할당
class _HomePageState extends State<HomePage> {
  bool isMale = true;
  // 사용자가 버튼을 클릭 했을 때 해당 함수 호출해서 값 전달
  void onGenderChanged(bool male) {
    setState(() {
      isMale = male;
    });
  }

  double height = 170;
  // 사용자가 버튼을 클릭 했을 때 해당 함수 호출해서 값 전달

  void onHeightChanged(double newHeight) {
    setState(() {
      height = newHeight;
    });
  }

  double weight = 70;
  // 사용자가 버튼을 클릭 했을 때 해당 함수 호출해서 값 전달
  void onWeightChanged(double newWeight) {
    setState(() {
      weight = newWeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            GenderBox(isMale, onGenderChanged),
            Spacer(),
            SliderBox(
                lable: 'HEIGHT',
                value: height,
                unit: 'cm',
                onChanged: onHeightChanged),
            Spacer(),
            SliderBox(
                lable: 'WEIGHT',
                value: weight,
                unit: 'kg',
                onChanged: onWeightChanged),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  // cm -> m 로 변경
                  final meterHeight = height / 100;
                  final bmi = weight / (meterHeight * meterHeight);
                  print('BMI $bmi');
                  // 페이지 이동(push 는 이동 pop 은 뒤로가기)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // 인자 값 넘기는 방법 두가지
                      // 1. RouteSettings 로 인자값 넘겨서 받은 페이지에서 ModalRoute 으로 받아오기
                      // 2. 페이지 생성자에 값을 직접 입력해서 인자 값 받아오기
                      builder: (context) {
                        // 2번 방법) 페이지 생성할 때 인자 값 넘겨줌
                        return ResultPage(bmi);
                      },
                      // 1번 방법) 이동할 페이지에 전달할 인자는 settings 로 넘겨줌
                      // settings: RouteSettings(arguments: bmi),
                    ),
                  );
                },
                child: Text('CALCULATE'),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
