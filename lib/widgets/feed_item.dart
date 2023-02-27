import 'package:flutter/material.dart';
import 'package:ocean_prototype/pages/detail_feed_page.dart';
class Feed_Item extends StatelessWidget {
  const Feed_Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailFeed_Page(),));
      },
        child:
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset("assets/images/ocean_img.jpg",),
              Text('위치/카테고리'),
              Text('닉네임')
            ],
          ),
        )
    );
  }
}
