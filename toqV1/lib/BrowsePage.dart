import 'package:flutter/material.dart';

import 'DrawerClass.dart';
// import 'HelpPage.dart';

class BrowsePage extends StatefulWidget {
  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  // List<String> nameList = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text("Browse", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        
        
      ),
      drawer: DrawerClass(),
      
      body: SingleChildScrollView(
        child: Container(
          height: 2000.0,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  // color: Colors.purple[500],
                  // height: 1000.0,
                  height: MediaQuery.of(context).size.height + 110.0,
                  width: MediaQuery.of(context).size.height,
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 34.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, top:8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10.0,
                              runSpacing: 5.0,
                              children:[
                                Center(
                                  child: Text("hi"),
                                ),
                              ]
                            ),
                          ),
                          
                        ),

                      ]
                    ),
                    
                  ),
                ),
                )
              ,
              Positioned(
                child: Container(
                  // color: Colors.purple[500],
                  // height: 1000.0,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.height,
                  decoration: new BoxDecoration(
                    color: Colors.purple[500],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 34.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, top:8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10.0,
                              runSpacing: 5.0,
                              children:[
                                Center(
                                  child: Text("hi"),
                                ),
                              ]
                            ),
                          ),
                          
                        ),

                      ]
                    ),
                    
                  ),
                ),
                )
              ,
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height - 110.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    color: Colors.purple[300],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 34.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, top:8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10.0,
                              runSpacing: 5.0,
                              children:[
                                Center(
                                  child: Text("hi"),
                                ),
                              ]
                            ),
                          ),
                          
                        ),

                      ]
                    ),
                    
                  ),
                
                ),
                
                
              ),
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height - 230.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 34.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text("next", style: TextStyle(color: Colors.white, fontSize: 18.0)),
                        ),
                        Container(
                          child: Text("next", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, top:8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10.0,
                              runSpacing: 5.0,
                              children:[
                                Center(
                                  child: Text("hi"),
                                ),
                              ]
                            ),
                          ),
                          
                        ),

                      ]
                    ),
                    
                  ),
                
                ),
                
                
              ),
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height - 350.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 34.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text("follow", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, top:8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10.0,
                              runSpacing: 5.0,
                              children:[
                                Center(
                                  child: Text("hi"),
                                ),
                              ]
                            ),
                          ),
                          
                        ),

                      ]
                    ),
                    
                  ),
                
                ),
                
                
              ),
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height - 470.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 34.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, top:8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10.0,
                              runSpacing: 5.0,
                              children:[
                                Center(
                                  child: Text("hi"),
                                ),
                              ]
                            ),
                          ),
                          
                        ),

                      ]
                    ),
                    
                  ),
                
                ),
                
                
              ),
              Positioned(
                child: Container(
                  
                  height: MediaQuery.of(context).size.height - 580.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 34.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Container(
                          child: Text("Today", style: TextStyle(color: Colors.red, fontSize: 18.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:16.0, top:8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 10.0,
                              runSpacing: 5.0,
                              children:[
                                Center(
                                  child: Text("hi"),
                                ),
                              ]
                            ),
                          ),
                          
                        ),

                      ]
                    ),
                    
                  ),
                
                ),
                
                
              ),
            
            
            ]
          ),

        )
      
      
      
      
      
    ),
      // GestureDetector( 
      //               onTap:(){
                      
      //                 print("Selection: ");
      //                 // if (index == 2){};
      //                 // Navigator.push(context, 
      //                 //   new MaterialPageRoute(builder: (context) => new HelpPage()),
      //                 // );

      //               }
      //               ,
      //               child: Container(
      //                 //ListWheelScrollView: the wheel is not working in flutter properlys
      //   child: 
        
        // ListWheelScrollView(   //

        //   onSelectedItemChanged: (index){
        //     // print("clicked");
        //     // RaisedButton(onPressed: null,);
        //     debugPrint("selected item $index");
        //     if (index == 3){
        //       print("object");
        //     }
        //   },
          
        //   itemExtent: 100, 
        //   // useMagnifier: true,
        //   diameterRatio: 3,
        //   // offAxisFraction: 0.5,
        //   magnification: 1.5,




        //   children: [
        //     FlatButton(onPressed: (){
        //       print("clicked");
        //       Navigator.push(context, 
        //                 new MaterialPageRoute(builder: (context) => new HelpPage()),
        //               );
        //     }, child: Text("text1")),
        //     FlatButton(onPressed: null, child: Text("text2")),
        //     FlatButton(onPressed: null, child: Text("text3")),
        //     FlatButton(onPressed: null, child: Text("text1")),
        //     FlatButton(onPressed: null, child: Text("text2")),
        //     FlatButton(onPressed: null, child: Text("text3")),
        //     FlatButton(onPressed: null, child: Text("text1")),
        //     FlatButton(onPressed: null, child: Text("text2")),
        //     FlatButton(onPressed: null, child: Text("text3")),
            
            

            
        //     // RaisedButton(onPressed: null),
        //     // // InkWell(
        //     // //         onTap:(){
        //     // //           print("Clicked here");

        //     // //         },
        //     // ListTile(
              
        //     //   title: Text("data"),
        //     //   onTap: (){
        //     //     print("Selection: ");
        //     //           // if (index == 2){};
        //     //           Navigator.push(context, 
        //     //             new MaterialPageRoute(builder: (context) => new HelpPage()),
        //     //           );
        //     //   },
        //     // ),
        //     // Padding(
        //     //   padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, ),
        //     //   child: FlatButton(
        //     //       // height: 100,
        //     //       // width: MediaQuery.of(context).size.width,
        //     //       color: Color(0xff622f74),
        //     //       child: Text("Topic"),
        //     //       onPressed: (){
        //     //         Navigator.push(context, 
        //     //             new MaterialPageRoute(builder: (context) => new HelpPage()),
        //     //           );
        //     //       },
        //     // //       child: ListTile(
              
        //     // //   title: Text("data"),
        //     // //   onTap: (){
        //     // //     print("Selection: ");
        //     // //           // if (index == 2){};
        //     // //           Navigator.push(context, 
        //     // //             new MaterialPageRoute(builder: (context) => new HelpPage()),
        //     // //           );
        //     // //   },
        //     // // ),
        //     //     ),
        //     // ),
        //     // // ),
        //     // Padding(
        //     //   padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, ),
        //     //   child: Container(
        //     //       height: 100,
        //     //       width: MediaQuery.of(context).size.width,
        //     //       color: Color(0xff622f74),
        //     //     ),
        //     // ),
        //     // Padding(
        //     //   padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, ),
        //     //   child: Container(
        //     //       height: 100,
        //     //       width: MediaQuery.of(context).size.width,
        //     //       color: Color(0xff622f74),
        //     //     ),
        //     // ),
        //     // Padding(
        //     //   padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, ),
        //     //   child: Container(
        //     //       height: 100,
        //     //       width: MediaQuery.of(context).size.width,
        //     //       color: Color(0xff622f74),
        //     //     ),
        //     // ),
        //     // Padding(
        //     //   padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, ),
        //     //   child: Container(
        //     //       height: 100,
        //     //       width: MediaQuery.of(context).size.width,
        //     //       color: Color(0xff622f74),
        //     //     ),
        //     // ),
        //     // Padding(
        //     //   padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, ),
        //     //   child: Container(
        //     //       height: 100,
        //     //       width: MediaQuery.of(context).size.width,
        //     //       color: Color(0xff622f74),
        //     //       child: Center(
        //     //         child: RaisedButton(onPressed: null),)
        //     //     ),
        //     // ),
        //     // Padding(
        //     //   padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, ),
        //     //   child: Container(
        //     //       height: 100,
        //     //       width: MediaQuery.of(context).size.width,
        //     //       color: Color(0xff622f74),
        //     //     ),
        //     // ),
        //     // Padding(
        //     //   padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0, ),
        //     //   child: Container(
        //     //       height: 100,
        //     //       width: MediaQuery.of(context).size.width,
        //     //       color: Color(0xff622f74),
        //     //     ),
        //     // ),





          




        //   ],
          
        // ),
        // // child:
      
    );
  }
}