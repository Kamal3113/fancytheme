import 'package:fancyapp/homescreen.dart';
import 'package:fancyapp/verfiy.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class Forget extends StatefulWidget {
  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {

   static final int _pinLength = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
   title:Center(child: Text("Forget Password",style: TextStyle(color: Colors.purple),), )),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Container(
             child: Column(
               children: [
                 Padding(padding: EdgeInsets.only(top:20,left: 20),child:  Text(
    'Forget Password ?',
    style:
        TextStyle(color:Colors.purple,fontSize: 25.0, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  )),
 Padding(padding: EdgeInsets.only(top:2,left: 20),child:   Text(
   'Enter your registered Mobile Number to change Password !',
   style: TextStyle(
     fontSize: 15.0,
   ),
   textAlign: TextAlign.center,
 )),
               ],
             ),
           ),Container(
             child:   Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 5.0, horizontal: 40),
      child: new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Mobile Number",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if(val.length==0) {
                          return "Email cannot be empty";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),),
           ),Container(child: Column(children: [
              FlatButton(
     child: Text(
       'Resend a new code',
       style: TextStyle(color: Colors.black),
     ),
     onPressed: () => null
     //  Navigator.push(context, MaterialPageRoute(builder:(context)=> HomeScreen())),
     ),
    RaisedButton(
    textColor: Colors.white,
    color: Colors.black,
    child: Text("Verify & Proceed"),
    onPressed: () {
     Navigator.push(context, MaterialPageRoute(builder:(context)=>verifychange() ));
    },
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),

           ],),)
         ],
       )

   );
  }
}