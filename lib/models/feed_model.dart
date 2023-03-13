import 'dart:convert';

import 'package:http/http.dart' as http;

class Feed {
  int? feedId;
  String? photos;
  String? location;
  String? time;
  String? content;
  int? views;
  String? locationName;
  String? userId;
  String? feedActivity;

  Feed(
      {this.feedId,
        this.photos,
        this.location,
        this.time,
        this.content,
        this.views,
        this.locationName,
        this.userId,
        this.feedActivity});

  Feed.fromJson(Map<String, dynamic> json) {
    feedId = json['feed_id'];
    photos = json['photos'];
    location = json['location'];
    time = json['time'];
    content = json['content'];
    views = json['views'];
    locationName = json['location_name'];
    userId = json['user_id'];
    feedActivity = json['feed_activity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feed_id'] = this.feedId;
    data['photos'] = this.photos;
    data['location'] = this.location;
    data['time'] = this.time;
    data['content'] = this.content;
    data['views'] = this.views;
    data['location_name'] = this.locationName;
    data['user_id'] = this.userId;
    data['feed_activity'] = this.feedActivity;
    return data;
  }
}

Future<List<Feed>> fetchFeedList() async{
  final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/feed/'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return  (jsonDecode(utf8.decode(response.bodyBytes))as List)
        .map((e) => Feed.fromJson(e))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}