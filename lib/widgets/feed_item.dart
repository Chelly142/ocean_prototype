

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ocean_prototype/pages/detail_feed_page.dart';
class Feed_Item extends StatefulWidget {
  Feed_Item({
    Key? key,
    required this.nickname,
    required this.location_name,
    required this.category,
    required this.photos,
  }) : super(key: key);
  final String? nickname;
  final String? location_name;
  final String? category;
  final String? photos;
  @override
  State<Feed_Item> createState() => _Feed_ItemState();


}

class _Feed_ItemState extends State<Feed_Item> {
  @override
  Widget build(BuildContext context) {
    String? nickname = widget.nickname;
    String? location_name =  widget.location_name;
    String? category = widget.category;
    String? photo = widget.photos;
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailFeed_Page(),));
        },
        child:
        Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Image.network('http://127.0.0.1:8000/'+photo!), // 흐음... 이게 맞나...
              Text(category!),
              Text(nickname!)
            ],
          ),
        )
    );
  }
}

