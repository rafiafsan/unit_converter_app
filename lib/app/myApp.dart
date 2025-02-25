import 'package:flutter/material.dart';
import '../presentation/ui/screen/homePage.dart';

class myApp extends StatelessWidget {
  const myApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        ),

      ),
      title: "First App",
      home: Unitconverter(),
    );
  }
}