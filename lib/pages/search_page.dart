import 'package:flutter/material.dart';

class Search_Page extends StatelessWidget {
  const Search_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
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



        );
  }
}
