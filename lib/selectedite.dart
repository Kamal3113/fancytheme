
   
import 'dart:ui';

import 'package:fancyapp/checkout.dart';
import 'package:flutter/material.dart';

class Selecteditem extends StatefulWidget {
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Selecteditem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asset/d.jpg'),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding:
                const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 40.0),
            child: buildBlurryWidget(
              const Text('Blurry Stuff',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      color: Color(0xff0F1523),
                      fontWeight: FontWeight.bold)),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames elementum ut amet, amet a sed neque. Pharetra tristique tincidunt sollicitudin eu, varius urna. ',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Color(0xff0F1523),
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBlurryWidget(Widget _child, Widget __child) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          color: Colors.white.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(flex: 5,child:
                Container(
                 
                
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                 Container(
                   
                   width: 280,
                   child: Text('Fine Cotton Dress',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                 ) ,Text('\$34.00',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,), 
                  Text('Best cotton ever',style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
                ],),
                )),
               Expanded (flex: 5,child:
                Container(
               
                child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton( shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),onPressed: (){},child: Text("SIZE"),),
                    RaisedButton(onPressed: (){},child: Text("COLOR"), shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),)
                  ],
                ),
                RaisedButton.icon(color: Color(0xff37274a),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
                }, icon: Icon(Icons.card_travel,color: Colors.white,), label: Text("Add to Bag",style: TextStyle(color: Colors.white),), shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),)
                ],),
                )),
                // _child,
                // const SizedBox(
                //   height: 20,
                // ),
                // __child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
