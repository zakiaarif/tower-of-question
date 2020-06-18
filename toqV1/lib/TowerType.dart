import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toq_v1/DrawerClass.dart';
import 'package:toq_v1/Question/question.dart';
import 'package:toq_v1/ShortAnswer.dart';
import 'package:toq_v1/TrueFalse.dart';

import 'McqPage.dart';



class TowerType extends StatelessWidget {
  final bool createTower1;
  final Question question;
  final FirebaseUser user;

  TowerType({this.createTower1, @required this.question, this.user});
  @override
  Widget build(BuildContext context) {
    print("create tower 1 in TowerType: $createTower1");
    print("the topic of the question is ${question.topic}");
    print("user.id of TowerType ${user.uid}");
    //  create the card with the topic options
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text("Abbey", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        
        
      ),
      drawer: DrawerClass(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
           child: Column(
             children: <Widget>[
                    // Container(
                    Container(
                      width: 400,
                      height: 400,
                      // color: Colors.red,
                      child: Card(
                          color: Colors.purple[100],
                          shape: RoundedRectangleBorder(
                            side: new BorderSide(color:  Color(0xff622f74), width: 2.0),
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          margin: EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                //choose a tower text
                                Container(
                                      height: 50,
                                      width: 280,
                                      // color: Colors.red,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Row(
                                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children:[
                                                // MyBullet(),// a class created in change password
                                                Text("Choose a Tower Type:",style: TextStyle(color: Color(0xff622f74), fontSize: 28.0, fontWeight: FontWeight.bold),),
                                            ]),
                                            
                                          ],
                                          
                                          
                                          
                                        )

                                      )

                                    // ),

                                  ),
                                SizedBox(height: 20,),
                                //MCQ's button
                                RaisedButton(
                                    child: buildButtonContainer("MCQ 's ", 250, Colors.greenAccent[200]),
                                    color: Colors.greenAccent[200],
                                      // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                                    onPressed: (){
                                      question.towerType = "MCQ";
                                      Navigator.push(context, 
                                        new MaterialPageRoute(builder: (context) => new McqPage(createTower1: createTower1, question: question, user: user)),
                                      );
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                                    ),
                                    ),
                                SizedBox(height: 30,),
                                //True/False button
                                RaisedButton(
                                  child: buildButtonContainer("True/False ", 250, Colors.yellowAccent[100]),
                                    color: Colors.yellowAccent[100],
                                     
                                    onPressed: (){
                                      Navigator.push(context, 
                                        new MaterialPageRoute(builder: (context) => new TrueFalse()),
                                      );
                                
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                                    ),
                                ),
                                SizedBox(height: 30,),
                                //short answer button
                                RaisedButton(
                                  child: buildButtonContainer("Short Answer ", 250, Colors.redAccent[100]),
                                    color: Colors.redAccent[100],
                                     
                                    onPressed: (){
                                      Navigator.push(context, 
                                        new MaterialPageRoute(builder: (context) => new ShortAnswer()),
                                      );
                                
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                                    ),
                                ),
                              ],
                            )
                          ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    RaisedButton(
                      child: buildButtonContainer("Back", 130, Colors.white),
                      color: Colors.white,
                     
                      onPressed:  (){
                          Navigator.pop(context,);
                        },
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                      ),
                  
                  ),
             ],


           ),


        ) 
      ),
    
      );
  }
  Widget buildButtonContainer(String label, double wid, Color rang){
    ///
    ///to call this function you need label and width of the button
    return Container(
      // color: Colors.red,
      height: 60.0,
      width: wid,
      decoration: BoxDecoration(
        borderRadius: (BorderRadius.circular(40.0)),
        color: rang,
        ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: Colors.purple[900], fontSize: 22.0, fontWeight: FontWeight.bold,),
        ),
        ),
      
    );
  }
}