import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toq_v1/helpform.dart';
import 'package:toq_v1/DrawerClass.dart';
import 'changePassword.dart';


class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        
        // iconTheme: new IconThemeData(size: 100, color: Colors.green),
  
        title: Text("Help", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        
      ),
      drawer: DrawerClass(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //container for text
            Container(
              height: 180,
              // color: Colors.red,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        MyBullet(),// a class created in change password
                        Text(" If you have any problem while using the     ",style: TextStyle(color: Colors.black, fontSize: 20.0,),),
                    ]),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        // MyBullet(),// a class created in change password
                        Text("      system, please let us know.  ",style: TextStyle(color: Colors.black, fontSize: 20.0,),),
                    ]),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        // MyBullet(),// a class created in change password
                        Text(" add a link ",style: TextStyle(color: Colors.black, fontSize: 20.0,),),
                    ]),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        MyBullet(),// a class created in change password
                        Text("Link to the tutorial:                                         ",style: TextStyle(color: Colors.black, fontSize: 20.0,),),
                    ]),

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        // MyBullet(),// a class created in change password
                        Text(" add a link ",style: TextStyle(color: Colors.black, fontSize: 20.0,),),
                    ]),



                  ],
                  
                  
                  
                )

              )

            ),
            //container for box
            SizedBox(height: 2,),
            Container( //outline of the card
              height: 320,
              width: 400,
              // color: Colors.yellow,
              child: Card(
                color: Colors.purple[100],
                  shape: RoundedRectangleBorder(
                    side: new BorderSide(color:  Color(0xff622f74), width: 2.0),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  margin: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment(-0.6, 0.5),
                      child: Column(
                        children: <Widget>[
                          Text("What is MUDMUC ? ",style: TextStyle(color: Colors.purpleAccent[800], fontSize: 30.0, fontWeight: FontWeight.bold),),
                          Divider(height: 20,), 
                         
                          Container(
                            height: 200,
                            width: 350,
                            // color: Colors.greenAccent,
                            child:Column(children:
                              [
                                Text("MADMUC stands for Multi-User Adaptive Distributed Mobile and Ubiquitois Computing.",style: TextStyle(color: Colors.black, fontSize: 18,),),
                                Text("We are one of the computer science research laboratory here at the University of Saskatchewan.",style: TextStyle(color: Colors.black, fontSize: 18,),),
                                Text("",style: TextStyle(color: Colors.black, fontSize: 18,),),
                                Text("You can learn more at our website:     http://madmuc.usask.ca/",style: TextStyle(color: Colors.black, fontSize: 18,),),
                                
                           
                              ]
                              ,)
                          ),




                        ],
                      
                      
                      
                      ),


                    ),
                  ),





              ),
            ),
            SizedBox(height: 20,),
            Container(
              // color: Colors.black,
              width: 390,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //add buttons in here
                children: <Widget>[
                  RaisedButton(
                    // padding: EdgeInsets.only(left: 0.8, ),
                    child: buildButtonContainer("Help Form", 130),
                    color: Colors.white,
                    // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                    onPressed:  (){
                      Navigator.push(context, 
                        new MaterialPageRoute(builder: (context) => new HelpForm()),
                      );
                    },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                  ),
                  
                  ),
                  RaisedButton(
                    child: buildButtonContainer("FAQ's", 130),
                    color: Colors.white,
                    // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                    onPressed: (){
              
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                  ),
                  
                  ),
                ],

              ),)




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