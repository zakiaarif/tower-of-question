import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:toq_v1/BrowsePage.dart';
import 'package:toq_v1/Login_in/Loginpage.dart';
// import 'package:toq_v1/QuestionBank.dart';
// import 'package:flutter/material.dart';
import 'package:toq_v1/homepage.dart';
// import 'package:toq_v1/loginpage.dart';
import 'package:toq_v1/setting.dart';
import 'package:toq_v1/menubar.dart';
import 'package:toq_v1/HelpPage.dart';

import 'Map.dart';


class DrawerClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    return Drawer(
        // elevation: 40,
        child: Container(
          color: Colors.purple[100],
          // height: 100,
          // width: 60,
        
        child: new ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.purple[200],
                  Color(0xff622f74)
                ])
                // color: Colors.purple[500],
              ),
              
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(18.0),
                      child: Image.asset("images/profile_image.jpg", width: 70, height: 70),
                      ),
                    ),
                    // Padding(padding: EdgeInsets.all(8.0), child: Text("Abbey", style: TextStyle(color: Colors.white, fontSize: 30.0) ,),),
                    RaisedButton(color: Colors.transparent,child: Text("Abbey", style: TextStyle(color: Colors.white, fontSize: 30.0)),onPressed: (){
                          Navigator.push(context, 
                            new MaterialPageRoute(builder: (context) => new Homepage()),
              );
            })
                  ],),
              ),
              
            ),
            
            new Divider(
              height: 20,
            ),
            CustomListTile(Icons.search, "Browse Tower", (){
              Navigator.push(context, 
                new MaterialPageRoute(builder: (context) => new BrowsePage()),
              );
            },),
            new Divider(
              height: 10,
            ),
            CustomListTile(Icons.account_balance, "Question Bank", ()  {
              Navigator.push(context, 
                new MaterialPageRoute(builder: (context) => new MyHomePage()),
              );
            }),
            new Divider(
              height: 10,
            ),
            CustomListTile(Icons.person, "My Progress", () => {}),
            new Divider(
              height: 10,
            ),
            CustomListTile(Icons.settings, "Settings", (){
              Navigator.push(context, 
                new MaterialPageRoute(builder: (context) => new Setting()),
              );
            }),
            new Divider(
              height: 10,
            ),
            CustomListTile(Icons.help, "Help", (){
              Navigator.push(context, 
                new MaterialPageRoute(builder: (context) => new HelpPage()),
              );
            },),
            new Divider(
              height: 10,
            ),
            CustomListTile(Icons.lock, "Logout", (){
              Navigator.push(context, 
                new MaterialPageRoute(builder: (context) => new LoginPage()),
              );
            },),

                       
          ],),)
      )
    ;

  }
}