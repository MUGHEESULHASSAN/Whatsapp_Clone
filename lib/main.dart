import 'package:flutter/material.dart';
import 'package:mobile_application_development/Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "OpenSans",
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF075E54),
        secondary:Color(0xFF258D36),
        ),
        
        
        

      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}