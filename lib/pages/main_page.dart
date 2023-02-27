import 'package:flutter/material.dart';



class Main_Page extends StatelessWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.waves_rounded),
        title: Text('바다'),
        actions: [Icon(Icons.add_alert,)],
      ),
      body: Container(),


    );
  }
}





class FeedItem extends StatelessWidget {
  const FeedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(margin:EdgeInsets.all(10),height: 140,width: 140, color: Colors.black),
          Container(margin:EdgeInsets.all(10),height: 140,width: 140, color: Colors.blue),
          Container(margin:EdgeInsets.all(10),height: 140,width: 140, color: Colors.red),
          Container(margin:EdgeInsets.all(10),height: 140,width: 140, color: Colors.yellow),
          Container(margin:EdgeInsets.all(10),height: 140,width: 140, color: Colors.green),
        ],
      ),
    );
  }
}