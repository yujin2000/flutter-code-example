import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  RecipeListItem(this.path, this.title);

  String path;
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 가로 정렬
        children: [
          AspectRatio(
            aspectRatio: 2 / 1, // 분자/분모
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(path,
                    fit: BoxFit.cover)), // BoxFit.cover 이미지 크기 Box에 맞게함
          ),
          SizedBox(height: 8),
          Text('Made $title', style: TextStyle(fontSize: 20)),
          SizedBox(height: 4),
          Text(
              "Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
              style: TextStyle(fontSize: 12, color: Colors.black45)),
        ],
      ),
    );
  }
}
