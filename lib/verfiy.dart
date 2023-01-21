import 'package:fancyapp/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class verifychange extends StatefulWidget {
  

  @override
  State<verifychange> createState() => _verifychangeState();
}

class _verifychangeState extends State<verifychange> {
   void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          width: MediaQuery.of(context).size.width / 1.3,
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            color: const Color(0xFFFFFF),
            borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Container(
              child: Column(
                children: [
                  CircleAvatar(
               radius: 60,
               backgroundColor:  Color(0xff119D50),
               child: Icon(Icons.check,size: 120,color: Colors.white,),
            )  ,
            Text("Your password has been changed successfully...",textAlign: TextAlign.center,)
                ],
              ),
            )
             ,
             RaisedButton(     shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),color: Color(0xff37274a),onPressed: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
       },child:Text("      Done      ",style: TextStyle(fontSize: 20,color: Colors.white),)) 
            ],
          )//Contents here
        ),
      );
    },
  );
}
   static final int _pinLength = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
   title:Center(child: Text("Verification",style: TextStyle(color: Colors.purple),), )),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Container(
             child: Column(
               children: [
                 Padding(padding: EdgeInsets.only(top:20,left: 20),child:  Text(
    'Verification Code',
    style:
        TextStyle(color:Colors.purple,fontSize: 25.0, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  )),
 Padding(padding: EdgeInsets.only(top:2,left: 20),child:   Text(
   'We have send you a 5 digit code to this +91837456374 to change Password!',
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
      child: PinCodeTextField(
        length: 5,
        onChanged: (value) {},
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 60,
          fieldWidth: 50,
          activeFillColor:  Color(0xFFddebdf),
        ),
        appContext: context,
      )),
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
    child: Text("Submit"),
    onPressed: () {
      showAlertDialog(context);
    //  Navigator.push(context, MaterialPageRoute(builder:(context)=>Homescreen() ));
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