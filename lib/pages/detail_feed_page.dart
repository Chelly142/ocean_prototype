import 'package:flutter/material.dart';

class DetailFeed_Page extends StatelessWidget {
  const DetailFeed_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.bookmark_add_outlined)
            ),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.heart_broken))
          ]
      ),
      body: Column(
        children: [
          Image.asset("assets/images/ocean_img.jpg"),
          Container(color: Colors.black12, child: Text("위치/카테고리")),
          Container(color: Colors.black12, child: Text("닉네임")),
          Container(color: Colors.black12, child: Text("업로드 날짜")),
        ],
    ),

    );
  }
}
