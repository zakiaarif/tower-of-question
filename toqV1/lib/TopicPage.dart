import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toq_v1/DrawerClass.dart';
import 'package:toq_v1/Question/question.dart';
import 'package:toq_v1/TowerType.dart';



class TopicPage extends StatelessWidget {

  // final bool createTower1;
  final bool createTower1;
  final Question question;
  final FirebaseUser user;

  TopicPage({this.createTower1, @required this.question, this.user}) ;
  // createTower1 = widget.createTower1;

  
  @override
  Widget build(BuildContext context) {
    // createTower1 = widget.createTower1;
    print("create tower 1 in TopicPage: $createTower1");
    print("user.id of TopicPage ${user.uid}");
    // show the different topics and allow user to choose any topic
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text("Abbey", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        
        
      ),
      drawer: DrawerClass(),
      body: SingleChildScrollView(
         child: Padding(
          padding: EdgeInsets.all(8),
           child: Column(
             children: <Widget>[
               
              Container(
                
                 height: 60,
                 width: 400,
                //  color: Colors.red,
                 
                 child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[
                                // MyBullet(),// a class created in change password
                                Text(
                                  "Choose a Topic :",
                                  style: TextStyle(color: Color(0xff622f74), fontSize: 30.0, fontWeight: FontWeight.bold),
                                  
                                  ),
                                
                            ]),
                            
                          ],
                          
                          
                          
                        )

                      )
               ),
              creatCards(context, "hi",),
              





             ],
           ),
        
        ),
      ),





    );
  
  }
   Widget creatCards(BuildContext context, String label) {
    return Container(
      height: 100,
      width: 403,
      // color: Colors.orange,
      child: Card(
          color: Colors.purple[100],
          shape: RoundedRectangleBorder(
            side: new BorderSide(color:  Color(0xff622f74), width: 2.0),
            borderRadius: BorderRadius.circular(10.0)
          ),
          // margin: EdgeInsets.all(8.0),
          child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //choose a tower text
                   Expanded(child: FlatButton(
                        child: buildButtonContainer(label,),
                        // color: Colors.red[100],
                          // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                        onPressed: (){
                          question.topic = label;
                          Navigator.push(context, 
                            new MaterialPageRoute(builder: (context) => new TowerType(createTower1: createTower1, question: question, user: user)),
                          );
                        },
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(20.0),
                        //   side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                        // ),
                        ),)
                    // SizedBox(height: 30,),
                  ],
                )
              ),
                      

      
    ),
    );
  }
  Widget buildButtonContainer(String label){
    ///
    ///to call this function you need label and width of the button
    return Container(
      // color: Colors.red,
      height: 100,
      width: 410,
      decoration: BoxDecoration(
        borderRadius: (BorderRadius.circular(40.0)),
        color: Colors.purple[100],
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
