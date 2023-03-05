import 'package:flutter/material.dart';
import 'package:ocean_prototype/models/feed_model.dart';
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
          Expanded(child:Feeds_Widget()),
        ],
      )
    );
  }
  
}
class Feeds_Widget extends StatefulWidget {
  const Feeds_Widget({Key? key}) : super(key: key);

  @override
  State<Feeds_Widget> createState() => _Feeds_WidgetState();
}

class _Feeds_WidgetState extends State<Feeds_Widget> {
  late Future<List<Feeds>>futureFeeds;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureFeeds = fetchFeeds();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureFeeds,
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return Text(snapshot.error.toString());
        }
        if(snapshot.hasData){
          List<Feeds> feeds = snapshot.data as List<Feeds>;
          return GridView.builder(
            padding: EdgeInsets.only(left:10,right: 10),
            itemCount: feeds.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1/1.3,
              crossAxisSpacing: 40,
              mainAxisSpacing: 40,
            ),
            itemBuilder: (context, index) {
              Feeds nowFeed = feeds.elementAt(index);
              return Feed_Item(nickname: nowFeed.userId.toString(), location_name: nowFeed.locationName, category: nowFeed.category, photos: nowFeed.photos);
            },
          );
        }
        else{
          return Text("실패!");
        }
      },
    );
  }
}

