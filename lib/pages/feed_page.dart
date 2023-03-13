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
          Expanded(child:FeedListWidget()),
        ],
      )
    );
  }
  
}
class FeedListWidget extends StatefulWidget {
  const FeedListWidget({Key? key}) : super(key: key);

  @override
  State<FeedListWidget> createState() => _FeedListWidgetState();
}

class _FeedListWidgetState extends State<FeedListWidget> {
  late Future<List<Feed>>futureFeedList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureFeedList = fetchFeedList();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureFeedList,
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return Text(snapshot.error.toString());
        }
        if(snapshot.hasData){
          List<Feed> feeds = snapshot.data as List<Feed>;
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
              Feed nowFeed = feeds.elementAt(index);
              return Feed_Item(userID: nowFeed.userId, locationName: nowFeed.locationName, feedActivity: nowFeed.feedActivity, photos: nowFeed.photos);
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

