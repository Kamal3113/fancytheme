import 'package:fancyapp/checkout.dart';
import 'package:fancyapp/data/fulldata.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {


  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:Title(color: Colors.black, child: Text("Shopping Cart",style: TextStyle(color: Color(0xff119D50),fontWeight: FontWeight.bold),)),
      leading: IconButton(icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.black,),onPressed: (){
        Navigator.pop(context);
        },),
      ),
      body: Column(
        children: [
          Expanded(flex: 80,child: Container(
          child:Padding(padding: EdgeInsets.only(top: 20),child: 
          ListView.builder(
    itemCount:items.length,
    itemBuilder: (BuildContext context, int index){
 
      return new  GestureDetector(
                              onTap: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) => Chat()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(38),
                                  color: Color(0xffddd5de),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                width: double.infinity,
                                height: 120,
                                margin: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 20),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Row(
                                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 0),
                                          child: Container(
                                            height: 80,
                                            width: 80.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image:
                                                    AssetImage( items[index]["image"]),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          )),
                                    ),
                           Padding(
  padding:
      EdgeInsets.only(top: 10, left: 30),child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
  children: [
     Text(
  items[index]["title"],
  style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 17),
),
  Text(
  items[index]["price"],
  style: TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      fontSize: 14),
),
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
     Text("                 "),
    Row(
      children: <Widget>[
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(0.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          onTap: () {
           
          },
        ),
        SizedBox(width: 15),
        Text(
          items[index]["qty"],
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(width: 15),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(0.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          onTap: () {
          
          },
        ),
      ],
    )
  ],
)
  ],
),
)
                                 
                                  ],
                                ),
                              ));
            
  
    },
    padding: EdgeInsets.all(0.0),
  ))
          )),
          Expanded(flex: 20,child: Container(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text('Total Amount',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text("\$56.80",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18))
            ],),
            Padding(
  padding: EdgeInsets.only(left: 20.0, right: 20.0),
  child: RaisedButton(
    textColor: Colors.white,
    color: Color(0xff092C08),
    child: Text("      Checkout      "),
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
    },
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
  ),
),
          ],),))
        ],
      ),
    );
  }
}