import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toq_v1/DrawerClass.dart';



class HelpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODo: implement build
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text("Help", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        
      ),
      drawer: DrawerClass(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 50),
          child: Column(
            children: <Widget>[
              
              Container(

                // color: Colors.red,
                height: 450,
                width: 430,
                child: Card(
                  color: Colors.blueAccent[100],
                  shape: RoundedRectangleBorder(
                    side: new BorderSide(color:  Color(0xff622f74), width: 2.0),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  margin: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextField(
                          // decoration: InputDecoration(hintText: 'Enter a search term'),
                          decoration: InputDecoration(
                                  hintText: 'Subject',
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                          
                          ),
                        
                        SizedBox(height: 10,),
                        Expanded(
                          child: TextField(
                          maxLines: 30,
                          // decoration: InputDecoration(hintText: 'Enter a search term'),
                          decoration: InputDecoration(
                                  // helperMaxLines: 20,
                                  hintText: 'Type Here',
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                          
                          ),)
                        
                      
                      
                      ],
                    ),




                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
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

                      ),)
            
            ],
          ),),





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