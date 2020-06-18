import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:toq_v1/Question/question.dart';
// import 'package:toq_v1/McqPage.dart';
import 'package:toq_v1/TopicPage.dart';
import 'package:toq_v1/homepage.dart';

class HomePage1 extends StatefulWidget {
  final Random random = Random();
  final bool halla;
  final List towerList;
  
  final double p;
  

  // _HomePage1State(this.createTower);
  HomePage1({this.halla, this.p, this.towerList});
  @override
  _HomePage1State createState() => _HomePage1State();
}
final bool createTower1 = false;
class _HomePage1State extends State<HomePage1>
    with SingleTickerProviderStateMixin {
      bool createTower1;
      bool halla;
      double p;
      // List towerList;
  AnimationController _controller;

  Random random ;
  FirebaseUser user;
  Future<void> getUserData() async{
    FirebaseUser userData = await FirebaseAuth.instance.currentUser();
    setState(() {
      user = userData;
      print("homePage1 userid ${userData.uid}");
      print(userData.email);
    });
  }
  // List towerList = [];
  

  

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    createTower1 = false;
    halla = widget.halla;
    p = widget.p;
    getUserData();
    // towerList = widget.towerList;
    
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  bool createTower ;
  // final bool createTower1 = false;
  
  @override
  Widget build(BuildContext context) {
    print("homwpage1 list $towerList");
  
    // print("halla in homepage1 $halla");
    createTower1 = false;
    final newQuestion = new Question(null, null, null, null);
    // print("create tower 1 at the start: $createTower1");
    return Column(
      // debugShowCheckedModeBanner:false,
        
        children: <Widget>[
          
          
          //gem earned container
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Gems earned: ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
              ),

          ),
          //create tower button
          Container(
            alignment: Alignment(0.8, 1),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              
              child:RaisedButton(
                child: buildButtonContainer(),
                color: Colors.white,
                // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
                onPressed:  (){
                      Navigator.push(context, 
                        new MaterialPageRoute(builder: (context) => new TopicPage(createTower1: createTower1, question: newQuestion, user: user)),
                      );
                      // Navigator.push(context, 
                      //   new MaterialPageRoute(builder: (context) => new Practice()),
                      // );
                      // new MaterialPageRoute(builder: (context) => new McqPage(createTower1: createTower1));
                    },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color:  Color(0xff622f74), width: 2.0 )
                ),
                
                ),

          
              
              ),
          ),
          //giving space between 
          new Divider(
            height: 10.0,
          ),
          //map image
          Expanded( 
              child:
                  Container(
                      
                      // height: 250,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage("images/map.png"), 
                          fit: BoxFit.fill,
                        )
                        ),
                      child: 
                          ClipRRect(
                              child:Stack( children: <Widget>[
                                
                                
                                
                                 
                                  
                                  // PhotoView(
                                    
                                  //     imageProvider: AssetImage('images/map.png'),
                                  //     maxScale: PhotoViewComputedScale.covered * 2.0,

                                  //     minScale: PhotoViewComputedScale.contained * 0.8,

                                  //     initialScale: PhotoViewComputedScale.covered,
                                  //     // loadingChild: ,
                                  // ),

                                  // if (createTower == true)
                                  // {
                                  //   print("create Tower is true");
                                  // },
                                  Positioned(
                                    right: 350,
                                    bottom: 150,
                                    
                                    child: RaisedButton(
                                      
                                      onPressed: (){
                                        // print("button pressed");
                                        // createTower = true;
                                        // print(createTower);

                                        setState(() {
                                                // print(createTower1);
                                                createTower1 = true;
                                                createTower = createTower1;
                                                
                                                // if (createTower == false) {
                                                //   createTower = true;

                                                // }
                                                // print('create tower $createTower');
                                                // print('create tower1 $createTower1');
                                                // print(createTower);
                                                
                                                
                                              });
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
                                        
                                    ),
                                    ),
                                    
                                    // tower(),
                                    // _detectOS(),

                                  // },
                                  Container(
                                    // alignment: Alignment.center,
                                    // padding: EdgeInsets.all(random),
                                    // padding: Padding(padding: random.nextInt(max)),
                                    
                                    // left: p,
                                    // top: p,
                                    // right: random,
                                    // bottom: random,
                                    // print(""),
                                    // height: 150,
                                    // width: 150,
                                    child: _detectOS(),
                                    // child: ListView.builder(
                                    //   itemCount: towerList.length,
                                    //   itemBuilder: (BuildContext context, int index) => 
                                      
                                    //           tryTower(context, index),
                                      
                                      
                                      
                                    //   ),

                                    
                                  ),
                                  
                                  Positioned(
                                    left: 150,
                                    top: 150,
                                    child: RaisedButton(
                                      
                                      onPressed: null,
                                      color: Colors.yellow,
                                      child: Container(
                      
                                          // height: 250,
                                          decoration: new BoxDecoration(
                                            image: new DecorationImage(
                                              image: new AssetImage("images/home_image.png"), 
                                              fit: BoxFit.fill,
                                            )
                                            ),
                                      ),
                                   ),
                            ),
                                ]
                              ),
                          ) ,
                          // Positioned(
                          //   right: -50,
                          //   bottom: -50,
                          //   child: Container(
                          //       // height: 20,
                          //       color: Colors.yellow,
                          //     ),
                          //   ),
                          
                        // ]
                        // ),
                        
                    
                  ),
                  

                // ],
            // ),
          ),
          // Container(
          //   color: Colors.black,
          //   // height: 50,
          //   child: Text("data"),

          // ),
          
          //    Container(
          //     // height: 800,
          //     color: Colors.black,
          //   // alignment: Alignment.topCenter,
            
          //     child: 
          //       Image(
          //                       // width: 200.0,
          //                       // height: 100.0,
          //                       fit: BoxFit.cover,
                                
          //                       image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg', ),
          //                       ),
          //     // Expanded( 
          //               // child:
          //               //  Padding(
          //               //   padding: EdgeInsets.fromLTRB(10, 0, 20, 5),
          //               //   child:Container(
          //               //     height: 150,
          //               // // alignment: Alignment.topCenter,
                        
          //               //       // child: Image(
          //               //       //   // width: 200.0,
          //               //       //   // height: 100.0,
          //               //       //   fit: BoxFit.cover,
                                
          //               //       //   image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg', ),
          //               //       //   ),
          //               //     ),
          //               //     ),
          //               //     // ),
              
              
              
              
          //     // _gridList(), // calling the list of the picture function
              
          //   //  Image(
          //   //   // width: 400.0,
          //   //   // height: 60.0,
          //   //   fit: BoxFit.cover,
              
          //   //   image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg', ),
          //   //   ),
          // ),
          // ),

        ],
        


        
      );
  }
  tryTower(BuildContext context, int index){
    return RaisedButton(child: Text("tower") ,onPressed: (){})
                
                
                
               ;
  }
  Widget buildButtonContainer(){
    return Container(
      alignment: Alignment.center,
      height: 60.0,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: (BorderRadius.circular(40.0)),
        color: Colors.white,
        ),
      child: Center(
        child: Text(
          "Create Tower",
          style: TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
        ),
      
    );
  }

  
   _detectOS() {
   //random location is only added if the submit button is true
    if (towerList.length != 0) {  
      // print('create tower detect $createTower');
      // print('create tower1 detect $createTower1');
      // towerList.add(p);
      Widget addTower;
      // List<Widget> toweronmap = new List<Widget>();
      addTower = Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             for(double item in towerList ) 
              Stack(
                // top: 60,
                // left: 20,
                children :[
                  Positioned(
                    top:item,
                    left:item,
                    child:RaisedButton(child: Text("tower") ,onPressed: (){})
                
                
                
                )
                ]
                )]);
  
         
              createTower = false;
              // Widget oneWidget(List<Widget> _lw) { return Column(children: _lw); }
              // print("list of toweronmap $toweronmap");
              return addTower;
      
    
      
    } 
    
    else  {
      var noTower = Positioned(
        left: p,
        top: p,
        child:
          Container(
                        width: 150.00,
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        color: Colors.blueAccent,
                        child: Text('iOS Device OS Detected',
                                textAlign: TextAlign.center,  
                                style: TextStyle(fontSize: 24, color: Colors.white)))
      );
      createTower = false;    
      return noTower;
    }
  }
  //  _createTower(){
  //   return Container(
  //                       alignment: Alignment.center,
  //                       width: 20.00,
  //                       height: 20.00,
  //                       color: Colors.green,
  //                       padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
  //                       child: Text('Android Device OS Detected',
  //                               textAlign: TextAlign.center,  
  //                               style: TextStyle(fontSize: 24, color: Colors.white),
                                
  //                               ),
                                
  //                               );
                   
  // }

}