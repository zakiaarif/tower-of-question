import 'package:flutter/material.dart';
import 'package:toq_v1/LoadingScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:toq_v1/homepage1.dart';
// import 'package:toq_v1/authentication/auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
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
  // final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '' ; 
  String error = '';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.purple[300],
      
      appBar: AppBar(
        title: Text("MADMUC", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor:  Color(0xff622f74),
        
        
        ),
      body:  Stack( //to add the image on the screen
        children: <Widget>[
          //toq image at the background
          new Container(
            height: 250,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/home_image.png"), 
                fit: BoxFit.fill,
                )
                ),
          ),
          SingleChildScrollView( //typing unlimited space
          padding: EdgeInsets.all(20.0),
          child: Column(
          children: <Widget>[
             
          //text tower of question
          Center(
            heightFactor: 4,
            child: Text(
            'Tower of Questions', style: TextStyle(color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.bold) 
          ),
          ),
          Form(
            key: _formKey,
                      child: Column(
              children: <Widget>[
                SizedBox(height: 40.0,),
                 buildTextField("Email", false),

                SizedBox(height: 10,),
                buildTextField("Password", true),
              ],
            ),
          ),
         


          SizedBox(height: 20,),
          Container(
            
            child: RaisedButton(
                child: buildButtonContainer(),
                onPressed: signIn,
                // () 
                //  {
                //    signIn;
                //   // Navigator.push(context, 
                //   //   new MaterialPageRoute(builder: (context) => new LoadingScreen()),
                //   // );
                //   // print(email);
                //   // if(_formKey.currentState.validate()){
                //   //   print("valid");
                //   //   // dynamic result = await _auth.signInWithEmailAndPassword(username, password);
                //   //   print(username);
                //   //   print(password);
                //   //   // if (result == null){
                //   //   //   setState(() => error = 'please supply a valid email');
                //   //   // }
                //   // }

                // },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Colors.white)
                  ),
                // color: Colors.white,

            
            ),
            
          ),
          
          
          Text(
            error,
            style: TextStyle(color: Colors.red, fontSize: 14.0),
          ),
          
          SizedBox(height: 10),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Forget Password?",
                style: TextStyle(color : Colors.white,),
                
                ),

            ],),
          ),

          // Container(
          
          
          

        ],
      )),
    
        ]),
    ),
    
    );
  
  }
   Widget buildTextField(String hintText, bool texthide){
    if(hintText == "Email"){
      return TextFormField(

        obscureText: texthide,
        maxLines: 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 25.0, ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.0),
          ),
          prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
          // suffixIcon: hintText == "Password" ? IconButton(
          //   icon: Icon(Icons.visibility_off), onPressed: (){},): Container()
            ),
        validator: (val) => val.isEmpty ? 'Invalid $hintText' : null,
        onChanged: (val) {
          setState(() => username = val);
        },
        );
    }
    else if (hintText == "Password") {
       return TextFormField(

        obscureText: texthide,
        maxLines: 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 25.0, ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.0),
          ),
          prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
          // suffixIcon: hintText == "Password" ? IconButton(
          //   icon: Icon(Icons.visibility_off), onPressed: (){},): Container()
            ),
        validator: (val) => val.length < 6 ? 'Enter $hintText 6 character long' : null,
        onChanged: (val) {
          setState(() => password = val);
        },
        );
    } else {
      return null;
    } 

  }

  Widget buildButtonContainer(){
    return Container(
      height: 60.0,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: (BorderRadius.circular(40.0)),
        // color: Colors.white,
        ),
      child: Container(
        child: Align(
          alignment: Alignment.center,

            child: Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
        ),
      ),
    );
  }

  Future<void> signIn () async{
    final formState = _formKey.currentState;
    if (formState.validate()){
      formState.save();
      try{
        print(username);
        AuthResult result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: username, password: password);
        FirebaseUser user = result.user;
        print("user from the firebase $user");
         Navigator.push(context, 
                    new MaterialPageRoute(builder: (context) => LoadingScreen()),
                  );

      }catch(e){
        print(e.message);

      }
      
    }
  }

}