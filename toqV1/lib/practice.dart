// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:toq_v1/DrawerClass.dart';

class Practice extends StatefulWidget {
  final bool halla;

  // @override
  final words = ['one', 'two'];
  final List<String> list = ['one', 'two', 'three', 'four'];

  Practice({Key key, this.halla}) : super(key: key);

  // const Practice({ this.text}) : super();
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
    var createTower;
    // String text;
    bool createTower1 ;
    bool halla;

  // _PracticeState(this.text);
    @override
    void initState() {
      super.initState();
      // createTower = false;
      _controller = AnimationController(vsync: this);
      halla = widget.halla;

    }
  
    @override
    void dispose() {
      super.dispose();
      _controller.dispose();
    }
    
  
    // void changeData(){
    //   setState(() {
    //     createTower1 = true;
        
    //   });
    // }
    
  
    @override
    Widget build(BuildContext context) {
      print("this is me $halla");
      createTower1 = false;
      List words = [10.0,20.0,80.0, 100.0 ];
            return Scaffold(
              backgroundColor: Colors.purple[200],
              appBar: AppBar(
                
                // iconTheme: new IconThemeData(size: 100, color: Colors.green),
          
                title: Text("Abbey", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
                backgroundColor:  Color(0xff622f74),
                
              ),
              drawer: DrawerClass(),
              body: Column(
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){
                      // text = "hello";
                      // print(text);
                      // text = "hello";
                      setState(() {
                          print(createTower1);
                          createTower1 = true;
                          createTower = createTower1;
                          
                          // if (createTower == false) {
                          //   createTower = true;
      
                          // }
                          // print('create tower $createTower');
                          // print('create tower1 $createTower1');
                          // print(createTower);
                          
                          
                        }
                      );
                    //    Navigator.push(context, 
                    //                 new MaterialPageRoute(builder: (context) => new Practice(text: text)),
                    //                 );
                      
                    },
                  ),
                  Container(
                    
                    child: _detectOS(),
                  //   // if (createTower == true){
                  //   // print("object")
                  // // }
                  //  ,
                  ), 
                  Container(
                    color: Colors.black,
                    height: 300,
                    width: 200,
      
                    child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             for(double item in words ) 
              Stack(
                // top: 60,
                // left: 20,
                children :[
                  Positioned(
                    top:item,
                    left:item,
                    child:RaisedButton(child: Text("hi") ,onPressed: (){})
                
                
                
                )
                ]
                )
          ],
        ),
            ),
          
          
          ],),
        
      );
    }
    // _trying(){
    //   var List = [1,2,3,4,5];

    // }
    Widget getTextWidgets(List<String> strings)
  {
    
    // List<Widget> list = new List<Widget>();
    // for(var i = 0; i < strings.length; i++){
    //     list.add(new Text(strings[i]));
    // }
    // return new Row(children: list);
    return new Row(children: strings.map((item) => new Text(item)).toList());
  }
    _detectOS() {
      
   
        if (createTower == true) {
          // print('create tower detect $createTower');
          // print('create tower1 detect $createTower1');
          var ali = Container(
                width: 150.00,
                color: Colors.green,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text('Android Device OS Detected',
                        textAlign: TextAlign.center,  
                        style: TextStyle(fontSize: 24, color: Colors.white),
                        
                        ),
                        
                        );

          return ali ;
          
        } 
        
        else if (createTower == false) {
      
          return Container(
          width: 150.00,
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          color: Colors.blueAccent,
          child: Text('iOS Device OS Detected',
                  textAlign: TextAlign.center,  
                  style: TextStyle(fontSize: 24, color: Colors.white)));
        }
      }
      
  }
 