import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);
  static String routeName = "/checkout";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KS Fabrics',
      home: Scaffold(
        body: Center(
          child: Text(
            'Paisey ho gaye ap k ... mazay kro :D',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
