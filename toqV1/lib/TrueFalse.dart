import 'package:flutter/material.dart';

import 'DrawerClass.dart';

class TrueFalse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODo: implement build
    return Scaffold(
       backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text("Abbey", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        
        
      ),
      drawer: DrawerClass(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             //True/false text
               Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 10),
                child: Container(
                    width: 400,
                    height: 30,
                    // color: Colors.red,
                    child: Text("True False Question :",style: TextStyle(color: Color(0xff622f74), fontSize: 28.0, fontWeight: FontWeight.bold),),
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
                    height: 200,
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
                          
                          ),
                  ),
               ),
               //Answer
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
                          //true button
                          Container(
                                width: 120,
                                height: 50,
                                // color: Colors.red,
                                child:  RaisedButton(
                                    // padding: EdgeInsets.only(left: 0.8, ),
                                    child: buildButtonContainer("True", 130, Colors.redAccent[100]),
                                    color: Colors.redAccent[100],
                                    // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                                    onPressed:  (){
                                      // Navigator.pop(context,
                                      // );
                                    },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                    side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                                  ),
                                  
                                  ),
                              ),
                          SizedBox(height: 10,),
                            //false button
                          Container(
                                width: 120,
                                height: 50,
                                // color: Colors.red,
                                child:  RaisedButton(
                                    // padding: EdgeInsets.only(left: 0.8, ),
                                    child: buildButtonContainer("False", 130, Colors.greenAccent[100]),
                                    color: Colors.greenAccent[100],
                                    // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                                    onPressed:  (){
                                      // Navigator.pop(context,
                                      // );
                                    },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                    side: BorderSide(color:  Color(0xff622f74), width: 2.0)
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
               
               SizedBox(height: 20,),
               //button back and submit
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
                            child: buildButtonContainer("Back", 130, Colors.white),
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
                          RaisedButton(
                            child: buildButtonContainer("Submit", 130, Colors.white),
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

                      ),
                      ),
                      ),


          ],
        )
      ),
    );
  }

  Widget buildButtonContainer(String label, double wid, Color raang){
    ///
    ///to call this function you need label and width of the button
    return Container(
      height: 60.0,
      width: wid,
      decoration: BoxDecoration(
        borderRadius: (BorderRadius.circular(40.0)),
        color: raang,
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