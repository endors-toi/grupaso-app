import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/navidad.jpg'))
        ),));
  }
}