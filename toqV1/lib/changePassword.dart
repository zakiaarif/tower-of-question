import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:toq_v1/homepage.dart';
// import 'package:toq_v1/loginpage.dart';
// import 'package:toq_v1/cupertinoSwitch.dart';
// import 'package:toq_v1/setting.dart';
// import 'package:toq_v1/menubar.dart';
import 'package:toq_v1/DrawerClass.dart';

import 'Login_in/Loginpage.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';





class ChangePassword extends StatelessWidget {


  createAlertDialog(BuildContext context){
    ///create the pop up dialog box 
    ///
    return showDialog(context: context, builder: (context){
      return Dialog(
        backgroundColor: Colors.purpleAccent[100],
        shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                ),
        child: Container(
          width: 600,
          height: 250,
          
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
            
                    children: <Widget>[
                      Container(
                        
                        alignment: Alignment.center,
                        height: 120,
                        width: 250,
                        color: Colors.purpleAccent[100],
                        child: Text("Are you sure?",style: TextStyle(color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RaisedButton(
                            child: buildButtonContainer("Back", 80),
                            color: Colors.white,
                            onPressed: (){
                                Navigator.pop(context,
                                );
                              },
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                              ),),
                          RaisedButton(child: buildButtonContainer("Confirm", 80),
                            color: Colors.white,
                            onPressed: (){
                                Navigator.push(context, 
                                  new MaterialPageRoute(builder: (context) => new LoginPage()),
                                );
                              },
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                              ),),
                        ],
                      ),                    
                    ],
                    ),
            ),
        ),

      );
    });
  }

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
      drawer: DrawerClass(),
      body: Container(
        
        padding: const EdgeInsets.fromLTRB(10, 35, 10, 35),
        // //control the size of the visible container
        // height: 450,
        // width: 450,
        // background: Colors.pink,
        child: SingleChildScrollView(child:Column(
          children:[
            Container(
              //control the size of the visible container
              height: 450,
              width: 450,
              child: Card( //the bigger visible container on the screen 
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
                      children: [
                        Text("Change Password ",style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),),
                        // TextFormField(decoration: InputDecoration(labelText: 'Enter your username',),),
                        Divider(height: 20,),
                        TextField(
                          // decoration: InputDecoration(hintText: 'Enter a search term'),
                          decoration: InputDecoration(
                                  hintText: 'Current Password',
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
                        TextField(
                          // decoration: InputDecoration(hintText: 'Enter a search term'),
                          decoration: InputDecoration(
                                  hintText: 'New Password',
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
                        
                        Container(
                            height: 150,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      MyBullet(),
                                      Text("Password must be 7 character long. ",style: TextStyle(color: Colors.black, fontSize: 18.0,),),
                                  ]),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      MyBullet(),
                                      Text("Only use Alphanumeric Password.    ",style: TextStyle(color: Colors.black, fontSize: 18.0,),),
                                  ]),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:[
                                      MyBullet(),
                                      Text("Once new password is added, you     ",style: TextStyle(color: Colors.black, fontSize: 18.0,),),
                                      
                                  ]),
                                  Text("will be logged out                             ",style: TextStyle(color: Colors.black, fontSize: 18.0,),),
                                ]
                              ),),
                          ),
                        
                    ]
                    ),
                    
                  ),
                    
                  ),
                ),),
            SizedBox(height: 20,),
            RaisedButton(
                child: buildButtonContainer("Save Changes", 150),
                color: Colors.white,
                // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                onPressed: (){
                  createAlertDialog(context);

                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color:  Color(0xff622f74), width: 2.0)
                ),
                
                ),
        ]),),
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
class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      // alignment: Alignment(-1, 0),

        height: 20.0,
        width: 10.0,
        decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
  );
  }
}
