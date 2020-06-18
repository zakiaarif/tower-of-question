import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toq_v1/DrawerClass.dart';
import 'package:toq_v1/changePassword.dart';
import 'package:toq_v1/cupertinoSwitch.dart';

// import 'package:toq_v1/setting.dart';


class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        
        // iconTheme: new IconThemeData(size: 100, color: Colors.green),
  
        title: Text("Settings", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        // leading: new IconButton(
        // icon: new Icon(Icons.arrow_back,size: 50.0,),
        // onPressed: () {Scaffold.of(context).openDrawer();}),
        // leading: new IconButton(icon: new Icon(Icons.settings),
        //     onPressed: (){ Scaffold.of(context).openDrawer();
        //     ),
        
      ),
      drawer:  DrawerClass(),
      body: Column(
        children: [
          ///this children have the card and the butoon
          ///the card include the children with the text and cupertino switch in rows
          ///
          notification(),
          // 
          Container(
            // alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                 child: buildButtonContainer("Change Password"),
                  color: Colors.white,
                  // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                  onPressed: (){
                          Navigator.push(context, 
                            new MaterialPageRoute(builder: (context) => new ChangePassword()),
              );},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.white)
                  ),

              ),
            ),

          ),
        ],
      ),
    );
  }
  Widget buildButtonContainer(String label){
    return Container(
      height: 70.0,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: (BorderRadius.circular(20.0)),
        color: Colors.white,
        ),
     
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            
            label,
            style: TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
        // ),
      
    );
  }
  
  Widget notification(){
    return Container(
      height: 88.0,
      width: 410,
      child: Card(
      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Text(            
              " Notifications",
              style: TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            // cuperswt()
            SizedBox(
                  width: 60,
                  
                  child: RaisedButton(
                    color: Color(0xff622f74),
                  elevation: 60,
                  child: new cuperswt(),
                    // color: Colors.white,
                    // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                    onPressed: (){

                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.purple)
                    ),

                ),),
          ]
      ),
      ),
    ),
    );
  }




}

