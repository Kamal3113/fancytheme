import 'package:fancyapp/checkout.dart';
import 'package:fancyapp/data/s.dart';

import 'package:fancyapp/detaildress.dart';
import 'package:fancyapp/firstscreen.dart';
import 'package:fancyapp/forgot.dart';
import 'package:fancyapp/homescreen.dart';
import 'package:fancyapp/login.dart';
import 'package:fancyapp/orderconfirmed.dart';
import 'package:fancyapp/paymentMode.dart';
import 'package:fancyapp/selectedite.dart';

import 'package:fancyapp/signupoption.dart';
import 'package:fancyapp/startscreen.dart';
import 'package:fancyapp/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:
     // testdata()
     // FirstScreen()
      //Detaildress()
     // MyColorPicker()
     // Detaildress()
     // Forget()
      //SignUpption()
      //OrderConfirmed()
      //PaymentMode()
     // CheckOut()
      //Selecteditem()
      //Start()
    //  Homescreen()
    //  Login()
      //SignUpption()
   startScreen(),
    );
  }
}

