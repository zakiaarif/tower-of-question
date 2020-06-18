// import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:percent_indicator/percent_indicator.dart';
import 'homepage.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () =>Navigator.push(context, 
                    new MaterialPageRoute(builder: (context) => new Homepage()),
                  ));
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff622f74),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(100.0),            
              ),
            // Text(
            //   "Loading",
            //   style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
            // ),
            // CircularProgressIndicator(backgroundColor: Colors.purpleAccent,strokeWidth: 10 ,),
            CircularPercentIndicator(
                
                radius: 150.0,
                lineWidth: 13.0,
                animation: true,
                percent: 1.0,
                
                center: new Text(
                  " Loading . . . ",
                  style:
                      new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0, fontStyle: FontStyle.italic),
                ),
                
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.purple,
              ),
          ]
        )
      ),
    );
  }
}