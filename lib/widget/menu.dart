import 'package:flutter/material.dart';
import 'dart:math';
import 'package:vector_math/vector_math.dart' show radians;

class RadialMenu extends StatefulWidget {
  createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 900), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return RadialAnimation(controller: controller);
  }
}

// The Animation
class RadialAnimation extends StatelessWidget {
  RadialAnimation({Key key, this.controller})
      : scale = Tween<double>(
          begin: 1.5,
          end: 0.0,
        ).animate(
          CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn),
        ),
        translation = Tween<double>(
          begin: 0.0,
          end: 45.0,
        ).animate(
          CurvedAnimation(parent: controller, curve: Curves.bounceOut),
        ),
        opacity = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(parent: controller, curve: Curves.easeIn),
        ),
        rotation = Tween<double>(
          begin: 0.0,
          end: 360.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.3,
              0.9,
              curve: Curves.decelerate,
            ),
          ),
        ),
        super(key: key);

  final AnimationController controller;
  final Animation<double> scale;
  final Animation<double> opacity;
  final Animation<double> translation;
  final Animation<double> rotation;

  build(context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, builder) {
          return Stack(alignment: Alignment.center, children: [
            GestureDetector(
              onTap: _toggle,
              child: _buildButton(0,
                  color: Colors.green,
                  icon: Icons.person,
                  spaceCenterRatio: 1.5),
            ),
            GestureDetector(
              onTap: _toggle,
              child: _buildButton(50,
                  color: Colors.orange,
                  icon: Icons.camera_alt,
                  spaceCenterRatio: 0.9),
            ),
            GestureDetector(
              onTap: _toggle,
              child: _buildButton(130,
                  color: Colors.blue, icon: Icons.share, spaceCenterRatio: 0.9),
            ),
            GestureDetector(
              onTap: _toggle,
              child: _buildButton(180,
                  color: Colors.blue, icon: Icons.star, spaceCenterRatio: 1.5),
            ),
            Transform.scale(
              scale: 1,
              child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  onPressed: _toggle),
            )
          ]);
        });
  }

  _buildButton(double angle,
      {Color color, IconData icon, spaceCenterRatio = 1}) {
    final double rad = radians(angle);
    return Transform(
        transform: Matrix4.identity()
          ..translate((translation.value) * cos(rad) * spaceCenterRatio,
              (translation.value) * sin(rad) * spaceCenterRatio),
        child: Opacity(
          opacity: opacity.value,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Icon(
              icon,
              color: Colors.grey,
            ),
          ),
        ));
  }

  _toggle() {
    if (controller.value == 0) {
      controller.forward();
    }
    if (controller.value == 1) {
      controller.reverse();
    }
  }
}
