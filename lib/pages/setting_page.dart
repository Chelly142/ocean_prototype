import 'package:flutter/material.dart';
class Setting_Page extends StatelessWidget {
  const Setting_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("설정"),
      ),
      body: Column(
        children: [
          Container(padding: EdgeInsets.only(top: 10,bottom: 10), width: double.infinity, child: Text("회원 탈퇴"),color: Colors.black12,)
        ],
      ),
    );
  }
}
