import 'package:flutter/material.dart';
import 'package:ocean_prototype/widgets/feed_item.dart';
class Feed_page extends StatelessWidget {
  const Feed_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AppBar(
            title:
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search)
                  ),
                ),
            ),
          Container(child: Text("전체 개수",),alignment: Alignment.centerLeft,decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.black),bottom: BorderSide(color: Colors.black)))),
          Container(child: Text("필터",),alignment: Alignment.centerRight),
          Expanded(child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.only(top:10),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),


            ],
          ),)
        ]

      )



      );

  }
}
