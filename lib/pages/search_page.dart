import 'package:flutter/material.dart';

class Search_Page extends StatelessWidget {
  const Search_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: TextFormField(
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.search)
          ),
        ),
      )
    );
  }
}
