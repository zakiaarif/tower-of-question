import 'package:flutter/material.dart';
import 'package:toq_v1/authentication/auth.dart';



class Provider extends InheritedWidget {

  final AuthService auth;



  Provider({Key key, Widget child, this.auth}) : super(key: key, child: child);



  @override

  bool updateShouldNotify(InheritedWidget oldWidget) {

    return true;

  }



  static Provider of(BuildContext context) =>

      (context.dependOnInheritedWidgetOfExactType() as Provider);

}