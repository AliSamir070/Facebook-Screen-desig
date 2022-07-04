import 'package:assignment1_flutter_part2/home_screen.dart';
import 'package:assignment1_flutter_part2/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Login':(context)=>LoginScreen(),
        'Home':(context)=>HomeScreen()
      },
      initialRoute: 'Home',
    );
  }
}
