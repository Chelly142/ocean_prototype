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
    String? photos = widget.photos;
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailFeed_Page(),));
        },
        child:
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset(photos!),
              Text(category!),
              Text(nickname!)
            ],
          ),
        )
    );
  }
}

