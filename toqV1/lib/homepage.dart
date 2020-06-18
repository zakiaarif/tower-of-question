import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:pinch_zoom_image/pinch_zoom_image.dart';
import 'package:toq_v1/DrawerClass.dart';
import 'package:toq_v1/Question/question.dart';
// import 'package:toq_v1/TopicScreen.dart';
// import 'package:pinch_zoom_image/pinch_zoom_image.dart';
// import 'package:zoomable_image/zoomable_image.dart';
// import 'package:photo_view/photo_view.dart';
// import 'package:cached_network_image/cached_network_image.dart';



import 'homepage1.dart';
final List towerList = [];
class Homepage extends StatelessWidget {
  
  bool createTower;
  double randvalue ;
  
  

  // Homepage({this.createTower}) ;
  Homepage({this.createTower});

  void tryFunction(){
    print("working");
    // createTower = true;
  }
  
  
  @override
  Widget build(BuildContext context) {
    print("this is createtower in homePage $createTower");
    
    if (createTower == true){
      var rng = new Random();
  
      randvalue = rng.nextInt(300).toDouble();
      print("p $randvalue");
      towerList.add(randvalue);
      createTower = false;
    }
    else{
      randvalue = 150;
    }
    for (var i= 0; i <= towerList.length; i++){
      print("total list in homepage: $towerList");

    }
    // final newQuestion = new Question(null, null);
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        
        // iconTheme: new IconThemeData(size: 100, color: Colors.green),
  
        title: Text("Abbey", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        
      ),
      drawer: DrawerClass(),
      body: HomePage1(halla: createTower, p: randvalue , towerList: towerList ));
      //  Column(
        
    //     children: <Widget>[
          
          
    //       //gem earned container
    //       Container(
    //         alignment: Alignment.centerLeft,
    //         child: Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: Text(
    //             "Gems earned: ",
    //             style: TextStyle(
    //               color: Colors.black,
    //               fontSize: 24.0,
    //             ),
    //           ),
    //           ),

    //       ),
    //       //create tower button
    //       Container(
    //         alignment: Alignment(0.8, 1),
    //         child: Padding(
    //           padding: const EdgeInsets.all(2.0),
              
    //           child:RaisedButton(
    //             child: buildButtonContainer(),
    //             color: Colors.white,
    //             // child: Text("Create Tower", style: TextStyle(color: Colors.black, fontSize: 25),),
    //             onPressed:  (){
    //                   Navigator.push(context, 
    //                     new MaterialPageRoute(builder: (context) => new TopicPage()),
    //                   );
    //                 },
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(40.0),
    //               side: BorderSide(color:  Color(0xff622f74), width: 2.0 )
    //             ),
                
    //             ),

          
              
    //           ),
    //       ),
    //       //giving space between 
    //       new Divider(
    //         height: 10.0,
    //       ),
    //       //map image
    //       Expanded( 
    //           child:
    //               Container(
                      
    //                   // height: 250,
    //                   decoration: new BoxDecoration(
    //                     image: new DecorationImage(
    //                       image: new AssetImage("images/map.png"), 
    //                       fit: BoxFit.fill,
    //                     )
    //                     ),
    //                   child: 
    //                       ClipRRect(
    //                           child:Stack( children: <Widget>[
                                
                                
                                
                                 
                                  
    //                               // PhotoView(
                                    
    //                               //     imageProvider: AssetImage('images/map.png'),
    //                               //     maxScale: PhotoViewComputedScale.covered * 2.0,

    //                               //     minScale: PhotoViewComputedScale.contained * 0.8,

    //                               //     initialScale: PhotoViewComputedScale.covered,
    //                               //     // loadingChild: ,
    //                               // ),

    //                               // if (createTower == true)
    //                               // {
    //                               //   print("create Tower is true");
    //                               // },
    //                                 Positioned(
    //                                 right: 350,
    //                                 bottom: 150,
                                    
    //                                 child: RaisedButton(
                                      
    //                                   onPressed: (){
    //                                     // print("button pressed");
    //                                     // createTower = true;
    //                                     // print(createTower);

    //                                   //   setState(() {
    //                                   //           // print(createTower1);
    //                                   //           createTower1 = true;
    //                                   //           createTower = createTower1;
                                                
    //                                   //           // if (createTower == false) {
    //                                   //           //   createTower = true;

    //                                   //           // }
    //                                   //           print('create tower $createTower');
    //                                   //           print('create tower1 $createTower1');
    //                                   //           // print(createTower);
                                                
                                                
    //                                   //         });
    //                                   },
    //                                   // color: Colors.yellow,
    //                                   child: new Row(
    //                                       mainAxisSize: MainAxisSize.min,
    //                                       children: <Widget>[
    //                                         new Image.asset(
    //                                           'images/profile_image.jpg',
    //                                           height: 40.0,
    //                                           width: 40.0,
    //                                         ),
                                          
    //                                       ],
    //                                     ),
                                        
    //                                 ),
    //                                 ),
                                    
    //                                 tower(),

    //                               // },
                                  
                                  
    //                               Positioned(
    //                                 left: 150,
    //                                 top: 150,
    //                                 child: RaisedButton(
                                      
    //                                   onPressed: null,
    //                                   color: Colors.yellow,
    //                                   child: Container(
                      
    //                                       // height: 250,
    //                                       decoration: new BoxDecoration(
    //                                         image: new DecorationImage(
    //                                           image: new AssetImage("images/home_image.png"), 
    //                                           fit: BoxFit.fill,
    //                                         )
    //                                         ),
    //                                   ),
    //                                ),
    //                         ),
    //                             ]
    //                           ),
    //                       ) ,
    //                       // Positioned(
    //                       //   right: -50,
    //                       //   bottom: -50,
    //                       //   child: Container(
    //                       //       // height: 20,
    //                       //       color: Colors.yellow,
    //                       //     ),
    //                       //   ),
                          
    //                     // ]
    //                     // ),
                        
                    
    //               ),
                  

    //             // ],
    //         // ),
    //       ),
    //       // Container(
    //       //   color: Colors.black,
    //       //   // height: 50,
    //       //   child: Text("data"),

    //       // ),
          
    //       //    Container(
    //       //     // height: 800,
    //       //     color: Colors.black,
    //       //   // alignment: Alignment.topCenter,
            
    //       //     child: 
    //       //       Image(
    //       //                       // width: 200.0,
    //       //                       // height: 100.0,
    //       //                       fit: BoxFit.cover,
                                
    //       //                       image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg', ),
    //       //                       ),
    //       //     // Expanded( 
    //       //               // child:
    //       //               //  Padding(
    //       //               //   padding: EdgeInsets.fromLTRB(10, 0, 20, 5),
    //       //               //   child:Container(
    //       //               //     height: 150,
    //       //               // // alignment: Alignment.topCenter,
                        
    //       //               //       // child: Image(
    //       //               //       //   // width: 200.0,
    //       //               //       //   // height: 100.0,
    //       //               //       //   fit: BoxFit.cover,
                                
    //       //               //       //   image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg', ),
    //       //               //       //   ),
    //       //               //     ),
    //       //               //     ),
    //       //               //     // ),
              
              
              
              
    //       //     // _gridList(), // calling the list of the picture function
              
    //       //   //  Image(
    //       //   //   // width: 400.0,
    //       //   //   // height: 60.0,
    //       //   //   fit: BoxFit.cover,
              
    //       //   //   image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg', ),
    //       //   //   ),
    //       // ),
    //       // ),

    //     ],
        


        
    //   ),
    // );
  
  }
  
  Widget buildButtonContainer(){
    return Container(
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
  // Widget _gridList() {
  //   return GridView.builder(
  //     itemCount: 64,
  //     gridDelegate:
  //     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
  //     itemBuilder: (context, index) {
  //       return Padding(
          
  //         padding: const EdgeInsets.all(0.0),
  //         child: GestureDetector(
            
  //           child:  
  //           // PinchZoomImage(
  //           //   image:
  //             new Image.asset(              
  //             'Assets/Map/map_$index.png',
  //             // height: 100 ,            
  //             ),
  //             // onZoomStart: () {
  //             //     print('Zoom started');
  //             //   },
  //             //   onZoomEnd: () {
  //             //     print('Zoom finished');
  //             //   },
  //             // ),
              
  //           onTap: () {
  //             _openImage(context, index);
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }
  // _openImage(context, index) async {
  //   showDialog(
  //     context: context,
  //     builder: (a) => AlertDialog(
  //       title: Text("Location Details"),
  //       content: new Image.asset(
  //         'Assets/Map/map_$index.png',
          
  //       ),
  //       actions: <Widget>[
  //         FlatButton(
  //             onPressed: () {
  //               _dismissDialog(context);
  //             },
  //             child: Text('Close'))
  //       ],
  //     ),
  //   );
  // }
  //  _dismissDialog(context) {
  //   Navigator.pop(context);
  // }
}

