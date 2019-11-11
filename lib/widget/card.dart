import 'package:flutter/material.dart';
import 'package:shemiranweb/const.dart';

class MyCard extends StatefulWidget {
  final asset;
  final title;
  MyCard({this.asset, this.title});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Image.asset(
            widget.asset,
            color: GlobalTheme.secondColor,
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            widget.title,
            style: TextStyle(color: GlobalTheme.firstColor),
          )
        ],
      ),
    );
  }
}
