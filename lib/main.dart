import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(new MYapp());
}
class MYapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Loginpage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}
class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();

}
class _LoginpageState extends State<Loginpage> with SingleTickerProviderStateMixin {
  AnimationController _iconanimationcontroller;
  Animation<double> _iconanimation;
 @override
 void initState()
 {
   super.initState();
   _iconanimationcontroller = new AnimationController(
       vsync:this,
     duration: new Duration(milliseconds: 300)
   );
   _iconanimation=new CurvedAnimation(
       parent: _iconanimationcontroller, curve: Curves.bounceOut
   );
   _iconanimation.addListener(() {
     setState(() {

     });
   });
   _iconanimationcontroller.forward();
 }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(image: new AssetImage("assets/ddd.jpg"),
            fit:BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconanimation.value * 100,
              ),
           new Form(
             
             child:Theme(
               data: new ThemeData(
                 brightness: Brightness.dark,
                 primarySwatch: Colors.teal,
                 inputDecorationTheme: new InputDecorationTheme(
                   labelStyle: new TextStyle(
                     color: Colors.teal,
                     fontSize: 20.0,
                   ),
                 ),


               ),
               child: Container(
                 padding: const EdgeInsets.all(40.0),
                 child: new Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                      new  TextFormField(
                       decoration: new InputDecoration(
                           labelText: "enter Email"

                       ),
                       keyboardType: TextInputType.emailAddress,
                     ),
                     new  TextFormField(
                       decoration: new InputDecoration(
                           labelText: "enter password"

                       ),
                       keyboardType: TextInputType.text,
                       obscureText: true,
                     ),
                     new Padding(padding: const EdgeInsets.only(top:20.0),
                     ),
                     new MaterialButton(
                       color: Colors.teal,
                       textColor: Colors.white,
                       child: new Text("Login"),
                       onPressed:()=>{} ,
                     )
                   ],
                 ),
               ),
             ) ,

           ),
            ],
          )
        ],
      ),
    );
  }
}
