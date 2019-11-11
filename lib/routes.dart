

import 'package:flutter/material.dart';
import 'package:shemiranweb/screens/home/index.dart';
import 'package:shemiranweb/screens/login.dart';
import 'package:shemiranweb/screens/verify.dart';

makeRoute(
    {@required BuildContext context,
    @required String routeName,
    store,
    Object arguments}) {
  final child = _buildRoutes(
      context: context,
      store: store,
      routeName: routeName,
      arguments: arguments);
  return child;
}

_buildRoutes({
  @required BuildContext context,
  @required String routeName,
  Object arguments,
  store,
}) {
  switch (routeName) {
    case '/':
      return SlideRightRoute(
        widget: Home()
      );
    case '/login':
      return SlideRightRoute(
        widget: Login()
      );
    case '/verify':
      return SlideRightRoute(
        widget: Verify()
      );
    default:
      throw 'Route $routeName is not defined';
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  SlideRightRoute({this.widget})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return new SlideTransition(
              position: new Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
