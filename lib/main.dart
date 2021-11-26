import 'package:flutter/material.dart';
import 'package:malavika_machine_test/routes.dart';
import 'package:malavika_machine_test/screens/home_screen.dart';
import 'package:malavika_machine_test/theame.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
