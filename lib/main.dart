import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_cps/screens/home_screen.dart';
import 'package:project_cps/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDXulGyap3SYB2mkuj0XFQsL-psLo0XWO8",
      appId: "1:1021545233471:android:e09862ff8b68f0f3c7cc8a",
      messagingSenderId: "1021545233471",
      projectId: "projeto-cps-fafc6",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetTree(),
    );
  }
}
