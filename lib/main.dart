import 'package:counter_cubit/screens/main_screen/main_screns_provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreenProvider(),
    );
  }
}
