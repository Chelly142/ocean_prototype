import 'dart:convert';

import 'package:http/http.dart' as http;

class Feeds {
  int? id;
  String? name;
  String? feedId;
  String? photos;
  String? location;
  String? time;
  String? content;
  int? views;
  String? category;
  String? locationName;
  int? userId;

  Feeds(
      {this.id,
        this.name,
        this.feedId,
        this.photos,
        this.location,
        this.time,
        this.content,
        this.views,
        this.category,
        this.locationName,
        this.userId});

  Feeds.fromJson(Map<String, dynamic> json) {

    id = json['id'];
    name = json['name'];
    feedId = json['feed_id'];
    photos = json['photos'] ;
    location = json['location'];
    time = json['time'];
    content = json['content'];
    views = json['views'];
    category = json['category'];
    locationName = json['location_name'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['feed_id'] = this.feedId;
    data['photos'] = this.photos;
    data['location'] = this.location;
    data['time'] = this.time;
    data['content'] = this.content;
    data['views'] = this.views;
    data['category'] = this.category;
    data['location_name'] = this.locationName;
    data['user_id'] = this.userId;
    return data;
  }
}
Future<List<Feeds>> fetchFeeds() async{
  final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/feed/'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return (jsonDecode(utf8.decode(response.bodyBytes))as List)
        .map((e) => Feeds.fromJson(e))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}