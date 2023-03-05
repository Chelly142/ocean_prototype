import 'package:flutter/material.dart';
import 'package:ocean_prototype/widgets/feed_item.dart';
import 'package:ocean_prototype/models/feed_model.dart';
class Feed_page extends StatelessWidget {
  const Feed_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AppBar(
            title:
                Container(
                  child: TextField(
                    decoration:
                    InputDecoration(
                      suffixIconColor: Colors.black54,
                      labelText: "검색창",
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.black54)),
                      suffixIcon: Icon(Icons.search),


                    ),
                  ),
                )

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
                  Flexible(flex: 5, child: Feedw_Item(),),
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
class FeedWidget extends StatefulWidget {
  const FeedWidget({
    Key? key,
    required this.feed_item;
  }) : super(key: key);
  final Feed_Item feed_item;
  @override
  State<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  late Future<List<Feeds>>futureFeeds;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureFeeds = fetchFeeds();

  }
  @override
  Widget build(BuildContext context) {
    Feed_Item feed_item = widget.feed_item;
    return FutureBuilder<List<Feeds>>(
      future: futureFeeds,
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return ListView(
            children: <Widget>[
              ...snapshot.data!.map((e) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_item.,),
                  Spacer(flex: 1),
                  Flexible(flex: 5, child: Feed_Item(),),
                  Spacer(flex: 1),
                ],
              ),)

            ],
          );
        }
      },
    );
  }
}
