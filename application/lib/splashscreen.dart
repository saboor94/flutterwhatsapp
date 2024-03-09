import 'dart:async';
import 'package:application/startpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Startpage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage(
                  'https://lilacinfotech.com/lilac_assets/images/blog/What-Is-E-commerce-and-what-are-its-Applications.jpg'))),
    ));
  }
}
