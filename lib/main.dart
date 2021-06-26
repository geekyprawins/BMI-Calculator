import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0B21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ));
// use copywith() to add the theme we need to dark mode
    // accentColor: Colors.red,
    // textTheme: TextTheme(body1: TextStyle(color: Colors.white))
    // replace # with 0xFF for full opacity
  }
}
