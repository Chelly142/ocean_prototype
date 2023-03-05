import 'package:flutter/material.dart';
import 'package:ocean_prototype/pages/setting_page.dart';
import 'package:ocean_prototype/widgets/feed_item.dart';
import 'package:ocean_prototype/pages/setting_page.dart';
class Mypage_Page extends StatelessWidget {
  const Mypage_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.waves_rounded),
        title: Text('바다'),
        actions: [IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Setting_Page(),));
        }, icon: Icon(Icons.ac_unit_outlined))],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15,right: 15),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                  children: [
                    Flexible(flex: 1, child: Image.asset("assets/images/ocean_img.jpg"),),
                    Flexible(
                        flex: 4,
                        child:
                          Column(
                            children: [
                              Text("닉네임"),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Text("팔로워"),Text("팔로잉")],)
                            ],
                          )
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                color: Colors.black12,
                child: Column(
                children: [
                  Container(child: Text("좋아하는 활동"),color: Colors.black26,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Text("서핑"),Text("요트투어"),Text("낚시"),Text("스쿠버"),],)
                ],
              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                color: Colors.black12,
                child: Column(
                  children: [
                    Container(child: Text("좋아하는 장소"),color: Colors.black26,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Text("거제도"),Text("부산"),Text("제주도"),Text("버뮤다"),],)
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10),
                  child: Text("자기소개")
              ),


            ],

          ),

        ],
      )
    );
  }
}
