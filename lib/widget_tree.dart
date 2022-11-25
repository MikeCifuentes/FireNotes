import 'package:project_cps/auth.dart';
import 'package:project_cps/pages/home_page.dart';
import 'package:project_cps/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:project_cps/screens/home_screen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return const LoginPage();
          }
        });
  }
}
