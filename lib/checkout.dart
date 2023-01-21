import 'package:fancyapp/paymentMode.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
 

  @override
  State<CheckOut> createState() => _checkOutState();
}

class _checkOutState extends State<CheckOut> {
  String dropdownValue = 'Android';
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        title:Center(child: Text("Checkout",style: TextStyle(color: Colors.purple),), )),
      body: Column(
        children: [
          Expanded(flex: 8,child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(padding: EdgeInsets.only(top: 20,left: 10),child:Text("Step 1",style: TextStyle(fontSize: 16),)),
         Padding(padding: EdgeInsets.only(left: 20),child:Text("Shipping",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
        Padding(padding: EdgeInsets.only(right: 20,left: 20),child:   TextField(
            decoration: InputDecoration(
              hintText: "Full Name",
              // [enabledBorder], displayed when [TextField, InputDecoration.enabled] is true
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent),
              ),
              //[focusedBorder], displayed when [TextField, InputDecorator.isFocused] is true
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
            ))),
        ),   Padding(padding: EdgeInsets.only(top: 20,right: 20,left: 20),child:   TextField(
            decoration: InputDecoration(
              hintText: "Address",
              // [enabledBorder], displayed when [TextField, InputDecoration.enabled] is true
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent),
              ),
              //[focusedBorder], displayed when [TextField, InputDecorator.isFocused] is true
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
            ))),
        ),
      Padding(padding: EdgeInsets.only(top: 20,right: 20,left: 20),child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Android', 'iOS', 'Symbian', 'Windows','java','blackberry']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
  Container(
    width: 80,
    child:  TextField(
            decoration: InputDecoration(
              hintText: "Zip Code",
              
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent),
              ),
        
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
            )))),
        ],)),
        Padding(padding: EdgeInsets.only(top: 20,right: 20,left: 20),child:
        Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
               DropdownButton<String>(  isExpanded: true,
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Android', 'iOS', 'Symbian', 'Windows','java','blackberry']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
          ],
        )
        ,),Padding(padding: EdgeInsets.only(top: 20,right: 20,left: 20),child:
        Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
               DropdownButton<String>(
                 isExpanded: true,
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Android', 'iOS', 'Symbian', 'Windows','java','blackberry']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
          ],
        ), ),
       Padding(padding: EdgeInsets.only(top: 20,right: 20,left: 20),child:   Row(children: [
 Checkbox(
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool value) {
              setState(() {
                isChecked = value;
              });
            },
          ),Text("Save for faster checkout for next time")
        ],))
         ],
          )),
           Expanded(flex: 2,child:    Center(child:       RaisedButton(     shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),color: Color(0xff37274a),onPressed: (){
      showModalBottomSheet(
        shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.only(topLeft: new Radius.circular(30),topRight: new Radius.circular(30))),
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                       Container(child:Text("Choose your\nPayment method",textAlign: TextAlign.center,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
                    Container(child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                             Text("Total Amount",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                             Text("\$ 34.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green)),
                         ],
                       )),
                       Container(
                         child:Column(children: [
                                             RaisedButton(color: Colors.purple,onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMode()));},child: Text("    Credit Card    ",style: TextStyle(fontSize: 16,color: Colors.white),), shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),),
                                      RaisedButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMode()));
                                      },child: Text("   Paypal   "), shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),)
                         ],)
       
                       )
                       ],
                      );
    });},child:Text("      Next      ",style: TextStyle(fontSize: 20,color: Colors.white),)) 
      ,))
        ],
      ),
    );
  }
  
}
