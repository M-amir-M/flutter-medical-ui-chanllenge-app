import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  final int seconds;
  final VoidCallback onFinish;
  final TextStyle textStyle;

  Countdown({this.seconds = 60, this.onFinish, this.textStyle});

  @override
  CountdownState createState() => CountdownState();
}

class CountdownState extends State<Countdown> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(seconds: widget.seconds), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
      } else if (status == AnimationStatus.dismissed) {
        widget.onFinish();
      }
    });

    controller.reverse(from: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget child) {
          return new Text(
            timerString,
            textAlign: TextAlign.center,
            style: widget.textStyle,
          );
        });
  }
}
