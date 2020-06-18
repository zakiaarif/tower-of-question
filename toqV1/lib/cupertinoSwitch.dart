import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
///
///this is only drwing the sliding
/// button in the setting screen
class cuperswt extends StatefulWidget {
  @override
  _cuperswtState createState() => _cuperswtState();
}

class _cuperswtState extends State<cuperswt>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  bool switchState = false;
  @override
  Widget build(BuildContext context) {
    return  CupertinoSwitch(
            value: switchState,
            
            onChanged: (bool value){
              setState(() {
                switchState = value;
              });
              print(value);
            },
          );
  }
}