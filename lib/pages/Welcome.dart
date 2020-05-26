import'package:flutter/material.dart';
import 'package:medGo/pages/on_boarding.dart';
import 'package:medGo/pages/getStarted.dart';
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GetStarted(),
          OnBoardingWidget(),
        ],
      ),
    );
  }
}