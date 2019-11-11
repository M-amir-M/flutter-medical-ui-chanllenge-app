import 'package:flutter/material.dart';
import 'package:shemiranweb/const.dart';

class MyButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  MyButton({this.text,this.onPressed});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                GlobalTheme.secondColor,
                GlobalTheme.firstColor,
              ]),
          boxShadow: [BoxShadow(color: GlobalTheme.firstColor)]),
      child: Text(
        widget.text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    );
  }
}
