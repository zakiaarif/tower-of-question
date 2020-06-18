import 'package:flutter/material.dart';

import 'DrawerClass.dart';

class ShortAnswer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // user can create the short answer in the field 
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
            //title text
            Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 10),
                child: Container(
                    width: 400,
                    height: 30,
                    // color: Colors.red,
                    child: Text("Short Aswer Question :",style: TextStyle(color: Color(0xff622f74), fontSize: 28.0, fontWeight: FontWeight.bold),),
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
                          
                          ),
                  ),
               ),
            
            //Answer text
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 5),
                child: Container(
                      width: 400,
                      height: 30,
                      // color: Colors.yellow,
                      child: Text("Answer:",style: TextStyle(color: Color(0xff622f74), fontSize: 25.0, fontWeight: FontWeight.bold),),
                    ),
               ),
            //Answer text field
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
                          
                          ),
                  ),
               ),
            
            
            Padding(
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
                    ),
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
                            child: buildButtonContainer("Back", 130),
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
                            child: buildButtonContainer("Submit", 130),
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
                   
          ]
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