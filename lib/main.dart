import 'package:flutter/material.dart';
import 'package:shemiranweb/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    final ThemeData theme = new ThemeData(
      fontFamily: 'dana',);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      initialRoute: '/login',
      onGenerateRoute: (RouteSettings settings) {
        return makeRoute(
            context: context,
            routeName: settings.name,
            arguments: settings.arguments,);
      },
    );
  }
}
