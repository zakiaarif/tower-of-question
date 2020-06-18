import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {

  final IconData icon;

  final String text;
  final Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);





  @override
  Widget build(BuildContext context) {
    return Padding(
       
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        highlightColor: Colors.purple,
        splashColor: Colors.purple[600],
        onTap: onTap,
        child: Container(
          height: 65,
          color: Colors.purple[600],
          // Divider(),
          child: Row(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  // Icon(icon, color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(icon, color: Colors.white, size: 38),
                  
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      text,
                       style: TextStyle(fontSize: 25, color: Colors.white),
                      
                       ),
                  
                  ),
                ],
              ),
              Icon(Icons.keyboard_arrow_right, color: Colors.white,)
            ],

          ),

        )
      ),

      
    );
  }
}