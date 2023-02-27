import 'package:flutter/material.dart';
class People_item extends StatelessWidget {
  const People_item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey,
      child: Column(
        children: [
          Text("닉네임",),
          Text("좋아하는 활동"),
          Text("좋아하는 장소"),
        ],
      ),
    );
  }
}
