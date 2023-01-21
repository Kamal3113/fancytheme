import 'package:fancyapp/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SignUpption extends StatefulWidget {


  @override
  State<SignUpption> createState() => _SignupoptionState();
}

class _SignupoptionState extends State<SignUpption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/S.jpg'),
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             Padding(padding: EdgeInsets.only(right: 10),child:    Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(" "),
  Container(
child:RaisedButton(
  shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(30.0))),
        onPressed: () {},
        textColor: Colors.white,
        color: Color(0xff351239),
        padding: const EdgeInsets.all(8.0),
        elevation: 5,
        child: new Text(
          "LogIn",style: TextStyle(color: Colors.white),
        ),
      ),
                )
                  ],
                ))
              ,
                Container(
                  child: Column(
                    children: [
                       Text(
                  'Fancy',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.stardosStencil(
    fontSize: 50,
    fontWeight: FontWeight.bold,
color: Colors.white,
  ),
                  // style: TextStyle(
                   
                  //   fontSize: 35.0,
                  //   fontWeight: FontWeight.bold,
                  //   color: Colors.white,
                  // ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Fashion you cant resist',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                    ],
                  )
                ),
                 Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
           Padding(padding: EdgeInsets.only(left: 30,right: 30),child: RaisedButton.icon(
  onPressed: (){ 
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Entermobile()));
     },
  shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(30.0))),
         padding: EdgeInsets.all(12),
  label: Text('Sign up with mobile', 
         style: TextStyle(color: Colors.black),),
  icon: Icon(Icons.mobile_friendly, color:Colors.black,), 
  textColor: Colors.white,
  splashColor: Colors.red,
  color: Colors.white,)),
                SizedBox(
                  height: 16,
                ),
   Padding(padding: EdgeInsets.only(left: 30,right: 30),child:   RaisedButton.icon(
  onPressed: (){ 
   Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
     },
  shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(30.0))),
         padding: EdgeInsets.all(12),
  label: Text('Sign up with Email', 
         style: TextStyle(color: Colors.white),),
  icon: Icon(Icons.email, color:Colors.white,), 
  textColor: Colors.white,
  splashColor: Colors.red,
  color: Color(0xff351239),),)
                    ],
                  )
                )
               
              ],
            ),
          ),
        ),
    );
  }
}