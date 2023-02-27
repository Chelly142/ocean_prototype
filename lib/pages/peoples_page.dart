import 'package:flutter/material.dart';
import 'package:ocean_prototype/widgets/people_item.dart';


class Peoples_Page extends StatelessWidget {
  const Peoples_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height;
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Flexible(fit: FlexFit.tight,child: People_item(),),
          Flexible(fit: FlexFit.tight,child: People_item(),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Flexible(fit: FlexFit.tight,child: People_item(),),
          Flexible(fit: FlexFit.tight,child: People_item(),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Flexible(fit: FlexFit.tight,child: People_item(),),
          Flexible(fit: FlexFit.tight,child: People_item(),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Flexible(fit: FlexFit.tight,child: People_item(),),
          Flexible(fit: FlexFit.tight,child: People_item(),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Flexible(fit: FlexFit.tight,child: People_item(),),
          Flexible(fit: FlexFit.tight,child: People_item(),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Flexible(fit: FlexFit.tight,child: People_item(),),
          Flexible(fit: FlexFit.tight,child: People_item(),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Flexible(fit: FlexFit.tight,child: People_item(),),
          Flexible(fit: FlexFit.tight,child: People_item(),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Flexible(fit: FlexFit.tight,child: People_item(),),
          Flexible(fit: FlexFit.tight,child: People_item(),),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Flexible(fit: FlexFit.tight,child: People_item(),),
          Flexible(fit: FlexFit.tight,child: People_item(),),
        ],),

      ],
    );
  }
}