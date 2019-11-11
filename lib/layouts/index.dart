import 'package:flutter/material.dart';
import 'package:shemiranweb/widget/drawer.dart';

class Layout extends StatefulWidget {
  final Widget child;
  final bool isOpen;
  Layout({this.child, this.isOpen});

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  AnimationController drawerController;
  Animation<double> translateAnimation;
  double drawerWidth;
  double deviceWidth;

  @override
  void didUpdateWidget(Layout oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (widget != oldWidget) {
      if (widget.isOpen) {
        drawerController.forward();
      } else {
        drawerController.reverse();
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    drawerController = new AnimationController(
        duration: Duration(milliseconds: 900), vsync: this)
      ..addListener(() {
        setState(() {});
      });

    drawerWidth = 300.0;

    translateAnimation = Tween<double>(
      begin: 0.0,
      end: drawerWidth,
    ).animate(
      CurvedAnimation(
        parent: drawerController,
        curve: Interval(
          0.2,
          0.5,
          curve: Curves.easeIn,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      deviceWidth = MediaQuery.of(context).size.width;
    });
    return Container(
      child: Stack(
        children: <Widget>[
          Transform(
            transform:
                Matrix4.translationValues(-translateAnimation.value, 0, 0),
            child: widget.child,
          ),
          Transform(
            transform: Matrix4.translationValues(
                deviceWidth - translateAnimation.value, 0, 0),
            child: MyDrawer(
              drawerWidth: drawerWidth,
            ),
          ),
        ],
      ),
    );
  }
}
