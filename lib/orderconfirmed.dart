import 'package:fancyapp/homescreen.dart';
import 'package:flutter/material.dart';

class OrderConfirmed extends StatefulWidget {


  @override
  State<OrderConfirmed> createState() => _orderConfirmedState();
}

class _orderConfirmedState extends State<OrderConfirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        title:Center(child: Text("Checkout",style: TextStyle(color: Colors.purple),), )),
      body: Center(child: Column(  mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
  Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [ Padding(padding: EdgeInsets.only(top: 20),child:  CircleAvatar(
               radius: 70,
               backgroundColor:  Color(0xff119D50),
               child: Icon(Icons.check,size: 120,color: Colors.white,),
            ) ),
            Text('Thank you for purchasing !',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)    ],
                 ),
                  RaisedButton(     shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),color: Color(0xff37274a),onPressed: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
       },child:Text("      Done      ",style: TextStyle(fontSize: 20,color: Colors.white),)) 
      ],)
    ),
              
    );
  }
}