import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Food App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF6F5F4),
        buttonColor: Color(0xff080808),
        accentColor: Color(0xffc2792b),
        cursorColor: Color(0xffC76F16),
      ),
      home: HomeScreen(),
    );
  }
}
