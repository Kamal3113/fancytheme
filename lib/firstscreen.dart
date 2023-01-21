import 'dart:async';
import 'dart:ui';

import 'package:fancyapp/startscreen.dart';
import 'package:flutter/material.dart';
class FirstScreen extends StatefulWidget {


  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState(){
    super.initState();
    //circular();
  }
  Timer timer;
  circular(){
    timer = new Timer.periodic(new Duration(seconds: 3), (time) {
     
      Navigator.push(context, MaterialPageRoute(builder: (context)=>startScreen()));
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
       //    Center(child: CircularProgressIndicator(backgroundColor: Colors.red,),),
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
                const EdgeInsets.only(right: 160.0,),
            child: buildBlurryWidget(
              const Text('Shop the most popular fashion wear',
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
          height: MediaQuery.of(context).size.height / 1,
          width: MediaQuery.of(context).size.width,
          color: Colors.white.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                _child,
                const SizedBox(
                  height: 20,
                ),
                __child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}