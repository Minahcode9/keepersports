import 'dart:async';

import 'package:flutter/material.dart';
import 'package:keepersports/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 224, 146, 11),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 200,
              color: Color.fromARGB(255, 204, 30, 30),
            ),
            Text(
              "Keeper Sports",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
