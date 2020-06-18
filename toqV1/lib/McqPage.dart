import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:toq_v1/Question/question.dart';
import 'package:toq_v1/homepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:toq_v1/homepage1.dart';
// import '';

import 'DrawerClass.dart';

class McqPage extends StatefulWidget {
  bool createTower1;
  final Question question;
  final FirebaseUser user;
  // McqPage({ @required this.text}) : super ();
  McqPage({this.createTower1, @required this.question, this.user}) ;

  @override
  _McqPageState createState() => _McqPageState();
}

class _McqPageState extends State<McqPage> {
  final db = Firestore.instance;
  

  final String text = "hi" ;

  void createTower(){
    print("create tower working");
    Positioned(
      right: 150,
      bottom: 150,
      child: RaisedButton(
        
        onPressed: (){
          // Navigator.push(context, 
          //   new MaterialPageRoute(builder: (context) => new BrowsePage()),
          // );
          print("create tower button is working");
        },
        // color: Colors.yellow,
        child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Image.asset(
                'images/profile_image.jpg',
                height: 40.0,
                width: 40.0,
              ),
            
            ],
          ),
  // Container(

        //     // height: 250,
        //     decoration: new BoxDecoration(
        //       image: new DecorationImage(
        //         image: new AssetImage("images/profile_image.png"), 
        //         fit: BoxFit.fill,
        //       )
        //       ),
        // ),
      ),
    );

  }



  @override
  Widget build(BuildContext context) {
    print("createTower1 in McqPage: ${widget.createTower1}");
    print("this topic and tower name is ${widget.question.topic} and ${widget.question.towerType}");
    print("user.id of MCQPage ${widget.user.uid}");
    // final myGlobalVar = Provider.of<HomePage1>(context);
    // allow the user to fill the fields and add question
    TextEditingController _questionEnteredController = new TextEditingController();
    _questionEnteredController.text = widget.question.enteredQuestion;
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text("Abbey", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        
        
      ),
      drawer: DrawerClass(),
      body: SingleChildScrollView(
        child: Column(
             children: [
               //mcq text
               Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 10),
                child: Container(
                    width: 400,
                    height: 30,
                    // color: Colors.red,
                    child: Text("Multiple Choice Question :",style: TextStyle(color: Color(0xff622f74), fontSize: 28.0, fontWeight: FontWeight.bold),),
                  ),
               ),
               //question
               Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 5),
                child: Container(
                      width: 400,
                      height: 30,
                      // color: Colors.yellow,
                      child: Text("Question:",style: TextStyle(color: Color(0xff622f74), fontSize: 25.0, fontWeight: FontWeight.bold),),
                    ),
               ),
               //question text field
               Padding(
                padding: EdgeInsets.fromLTRB(10, 2, 20, 05),
                child: Container(
                    width: 400,
                    height: 300,
                    // color: Colors.red,
                    child:  TextField(
                          maxLines: 15,
                          // decoration: InputDecoration(hintText: 'Enter a search term'),
                          decoration: InputDecoration(
                                  // helperMaxLines: 20,
                                  hintText: 'Type Here',
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                          controller: _questionEnteredController,
                          ),
                  ),
               ),
               //option text
               Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 5),
                child: Container(
                      width: 400,
                      height: 30,
                      // color: Colors.yellow,
                      child: Text("Options:",style: TextStyle(color: Color(0xff622f74), fontSize: 25.0, fontWeight: FontWeight.bold),),
                    ),
               ),
               //option text field
               //A
               Row(
                 children: <Widget>[
                   //letter A
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Container(
                          width: 20,
                          height: 30,
                          // color: Colors.red,
                          child: Text("A",style: TextStyle(color: Color(0xff622f74), fontSize: 25.0, fontWeight: FontWeight.bold),),
                        ),
                    ),
                   //letter A textfield
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 20, 05),
                      child: Container(
                          width: 350,
                          height: 90,
                          // color: Colors.red,
                          child:  TextField(
                                maxLines: 2,
                                // decoration: InputDecoration(hintText: 'Enter a search term'),
                                decoration: InputDecoration(
                                        // helperMaxLines: 20,
                                        hintText: 'Type Here',
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                      ),
                                
                                ),
                        ),
                    ),
                    //
                 ],
               ),
               //B
               Row(
                 children: <Widget>[
                   //letter B
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Container(
                          width: 20,
                          height: 30,
                          // color: Colors.red,
                          child: Text("B",style: TextStyle(color: Color(0xff622f74), fontSize: 25.0, fontWeight: FontWeight.bold),),
                        ),
                    ),
                   //letter B textfield
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 20, 05),
                      child: Container(
                          width: 350,
                          height: 90,
                          // color: Colors.red,
                          child:  TextField(
                                maxLines: 2,
                                // decoration: InputDecoration(hintText: 'Enter a search term'),
                                decoration: InputDecoration(
                                        // helperMaxLines: 20,
                                        hintText: 'Type Here',
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                      ),
                                
                                ),
                        ),
                    ),
                    //

                 ],
               ),
               //C  
               Row(
                 children: <Widget>[
                   //letter C
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Container(
                          width: 20,
                          height: 30,
                          // color: Colors.red,
                          child: Text("C",style: TextStyle(color: Color(0xff622f74), fontSize: 25.0, fontWeight: FontWeight.bold),),
                        ),
                    ),
                   //letter C textfield
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 20, 05),
                      child: Container(
                          width: 350,
                          height: 90,
                          // color: Colors.red,
                          child:  TextField(
                                maxLines: 2,
                                // decoration: InputDecoration(hintText: 'Enter a search term'),
                                decoration: InputDecoration(
                                        // helperMaxLines: 20,
                                        hintText: 'Type Here',
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                      ),
                                
                                ),
                        ),
                    ),
                  //
                 ],
               ),
               //D
               Row(
                 children: <Widget>[
                   //letter D
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Container(
                          width: 20,
                          height: 30,
                          // color: Colors.red,
                          child: Text("D",style: TextStyle(color: Color(0xff622f74), fontSize: 25.0, fontWeight: FontWeight.bold),),
                        ),
                    ),
                   //letter D textfield
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 20, 05),
                      child: Container(
                          width: 350,
                          height: 90,
                          // color: Colors.red,
                          child:  TextField(
                                maxLines: 2,
                                // decoration: InputDecoration(hintText: 'Enter a search term'),
                                decoration: InputDecoration(
                                        // helperMaxLines: 20,
                                        hintText: 'Type Here',
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                      ),
                                
                                ),
                        ),
                    ),
                    //
                 ],
               ),
               //Answer text
              
               Row(
                 children: <Widget>[
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 200,
                            height: 30,
                            // color: Colors.yellow,
                            child: Text("Answer:",style: TextStyle(color: Color(0xff622f74), fontSize: 25.0, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                                width: 200,
                                height: 50,
                                color: Colors.red,
                                child:  TextField(
                                      maxLines: 1,
                                      // decoration: InputDecoration(hintText: 'Enter a search term'),
                                      decoration: InputDecoration(
                                              // helperMaxLines: 20,
                                              hintText: 'Type Here',
                                              filled: true,
                                              fillColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                                borderSide: BorderSide(color: Colors.grey),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(05.0)),
                                                borderSide: BorderSide(color: Colors.grey),
                                              ),
                                            ),
                                      
                                      ),
                              ),
                      

                        ],
                      ),),
                     
                  //  image
                   Expanded( 
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 20, 5),
                          child:Container(
                            height: 150,
                        // alignment: Alignment.topCenter,
                        
                              child: Image(
                                // width: 200.0,
                                // height: 100.0,
                                fit: BoxFit.cover,
                                
                                image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg', ),
                                ),
                            ),),),
                 ],

               ),
               Padding(
                 padding: EdgeInsets.fromLTRB(10, 10, 18, 10),
                 child: Container(
                      // color: Colors.black,
                      width: 400,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //add buttons in here
                        children: <Widget>[
                          RaisedButton(
                            // padding: EdgeInsets.only(left: 0.8, ),
                            child: buildButtonContainer("Back", 130), // addde the back button
                            color: Colors.white,
                            // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                            onPressed:  (){
                              Navigator.pop(context,
                              );
                            },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                          ),
                          
                          ),
                          //submit button
                          RaisedButton(
                            child: buildButtonContainer("Submit", 130), // added the submit button
                            color: Colors.white,
                            // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                            onPressed: () async {
                              widget.createTower1 = true;
                              widget.question.enteredQuestion = _questionEnteredController.text;
                              print("question is ${widget.question.enteredQuestion}");
                              
                              await db.collection("userData").document(widget.user.uid).collection("Question").add
                              (
                                { 
                                  'Topic' : widget.question.topic,
                                  'Question Type' : widget.question.towerType,
                                  'Question' : widget.question.enteredQuestion,
                                  // 'Correct Answer' : question.correctAnswer,
                                  
                                  
                                  
                                  }

                              );

                              Navigator.push(context, 
                                  new MaterialPageRoute(builder: (context) => new Homepage(createTower: widget.createTower1)),
                              );

                              // createTower();

                      
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                          ),
                          
                          ),
                        ],

                      ),
                      ),
                      ),
                      
              ],
          
        ),
      ),
    );


  }

  Widget buildButtonContainer(String label, double wid){
    ///
    ///to call this function you need label and width of the button
    return Container(
      height: 60.0,
      width: wid,
      decoration: BoxDecoration(
        borderRadius: (BorderRadius.circular(40.0)),
        color: Colors.white,
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