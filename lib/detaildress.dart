import 'dart:ui';
import 'package:fancyapp/seeallCategory.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:fancyapp/data/data.dart';
import 'package:fancyapp/data/fulldata.dart';
import 'package:flutter/material.dart';

class Detaildress extends StatefulWidget {


  @override
  State<Detaildress> createState() => _DetaildressState();
}

class _DetaildressState extends State<Detaildress> {
     double _lowerValue = 50;
  double _upperValue = 180;
   bottomsheet(){
showModalBottomSheet(
        shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.only(topLeft: new Radius.circular(30),topRight: new Radius.circular(30))),
                    context: context,
                    builder: (context) {
                      return  Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Expanded(flex: 5,child: Container(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(child: Text('Filters',style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),),),
Container(
  child: Column(
    children: [
      Container(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
       Padding(padding: EdgeInsets.only(left: 20),child:  Text("Price Range",style: TextStyle(fontSize: 17),)),
        Container(
              
                alignment: Alignment.centerLeft,
                child: FlutterSlider(
                  values: [1000, 15000],
                  rangeSlider: true,

//rtl: true,
                  ignoreSteps: [
                    FlutterSliderIgnoreSteps(from: 8000, to: 12000),
                    FlutterSliderIgnoreSteps(from: 18000, to: 22000),
                  ],
                  max: 25000,
                  min: 0,
                  step: FlutterSliderStep(step: 100),

                  jump: true,

                  trackBar: FlutterSliderTrackBar(
                    activeTrackBarHeight: 2,
                    activeTrackBar: BoxDecoration(color: Colors.brown),
                  ),
                  tooltip: FlutterSliderTooltip(
                    textStyle: TextStyle(fontSize: 17, color: Colors.lightBlue),
                  ),
                  handler: FlutterSliderHandler(
                    decoration: BoxDecoration(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(25)),
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                  rightHandler: FlutterSliderHandler(
                    decoration: BoxDecoration(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(25)),
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                  disabled: false,

                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    _lowerValue = lowerValue;
                    _upperValue = upperValue;
                    setState(() {});
                  },
                )),
      ],),),
      Container(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       Padding(padding: EdgeInsets.only(left: 20),child:  Text("Sizes",style: TextStyle(fontSize: 17),)),
     Padding(padding: EdgeInsets.only(left: 20),child:   Container(
          height: 42,
              child:GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 40,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 9,
            mainAxisSpacing: 10),
        itemCount:sizes.length,
        itemBuilder: (context, index) {
          final itemsize = sizes[index];
          return RaisedButton(
            color: selectedItemSize == index?Colors.grey:Colors.amber,
             shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
            onPressed: (){
              setState(() {
                            selectedItemSize = index;
                            });

            },
           child:Text(itemsize,textAlign: TextAlign.center,style: TextStyle(fontSize: 12),)
//             selectedItemSize == index? Icon(
//       Icons.check,
//       color: Colors.white,
//     )

// : Container(),

          );
      
     
        },
      ),)),
      ],),)
      
    ],
  ),
)
              ],
            ),)
            ),
            Expanded(flex: 5,child: Container(child: Column(children: [
              Container(
                child:   Padding(padding: EdgeInsets.only(left: 20),child:  Text("Brands",style: TextStyle(fontSize: 17),)),
              ),
            Container(height: 150,
              child:  ListView.builder(itemCount: brands.length,itemBuilder: (BuildContext context,int index){
return Card(child:Padding(padding: EdgeInsets.all(10),child:Text(brands[index]),) );
              }))
            ],),)
            ),
            Expanded(flex: 1,child: Container(child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(color: Colors.purple, shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),onPressed: (){},child: Text("Clear",style: TextStyle(color: Colors.white),),),
                    RaisedButton(color: Colors.purple,onPressed: (){},child: Text("Apply",style: TextStyle(color: Colors.white)), shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),)
                  ],
                ),)
            )
            ],);
                        
    });
   } 
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  List<Color> multicolors = [
 Colors.blue,
                Colors.green,
               Colors.orange,
                Colors.red,
               
               
];
List sizes =["S",
"M",
"L",
"XL"
];
List brands =["Adidas",
"Nike",
"Reebok",
"Puma"
];
int selectedIndex;
int selectedItemSize;
   List<cartitems> listProduct = [];
     Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,), onPressed: (){}),
          actions: [
             Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                ),
                                onPressed: () { }),
                            IconButton(
                                icon: Icon(Icons.shop, color: Colors.black),
                                onPressed: () {})
                          ],
                        ),
          ],
   title:Center(child: Text("Wonders's dresses",style: TextStyle(color: Colors.purple),), )),
   body: Column(
     children: [
       Expanded(flex: 6,child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: items.length, itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                            
                              borderRadius: BorderRadius.circular(23)),
                width: MediaQuery.of(context).size.width * 0.6,
                child: Card(
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(23)),
            clipBehavior: Clip.antiAlias,
                  color: Colors.blue,
                  child: Container(  decoration: BoxDecoration(
                             
                              image: DecorationImage(
                                image: AssetImage(offer[index]['image']),
                             
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(23)),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                                                 RaisedButton(onPressed: (){
                                  
                                      },child: Text("\$23.4",style: TextStyle(fontWeight: FontWeight.bold),), shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),),
   Padding(padding: EdgeInsets.only(bottom: 10),child: Container(decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
    child: Icon(Icons.favorite,color: Colors.red,),))
                     ],
                   ),
                  ),
                ),
              );
        }),
      ),),
         Expanded(flex: 4,child: Container(child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Padding(padding: EdgeInsets.only(left: 10),child: Row(
               children: [
                 FlatButton.icon(
                label: Flexible(
                  fit: FlexFit.loose,   
                  child: Container(
                 
                    child: Text(
                      'Filters',
                      style: TextStyle(fontSize: 18,color: Colors.purple),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                icon: Icon(Icons.science,color: Colors.purple,),
                onPressed: () { bottomsheet();},
              )],
             )),
        Padding(padding: EdgeInsets.only(left: 20,right: 20),child:   Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Color:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
               SizedBox(
width: 250,
      height: 59,
      child:GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 58,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8),
        itemCount:multicolors.length,
        itemBuilder: (context, index) {
          final itemColor = multicolors[index];
          return RaisedButton(color:itemColor,
             shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
            onPressed: (){
              setState(() {
                            selectedIndex = index;
                            });

            },
           child:  Center(child:selectedIndex == index?Icon(
      Icons.check,
      color: Colors.white,
    )

: Container(),

           ) );
      
     
        },
      )),
            ],
          )),
          Padding(padding: EdgeInsets.only(left: 20,right: 20),child:   Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Size:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
               SizedBox(
width: 250,
      height: 59,
      child:GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 58,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 9,
            mainAxisSpacing: 10),
        itemCount:sizes.length,
        itemBuilder: (context, index) {
          final itemsize = sizes[index];
          return RaisedButton(
            color: selectedItemSize == index?Colors.grey:Colors.amber,
             shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
            onPressed: (){
              setState(() {
                            selectedItemSize = index;
                            });

            },
           child:Text(itemsize,textAlign: TextAlign.center,style: TextStyle(fontSize: 16),)
//             selectedItemSize == index? Icon(
//       Icons.check,
//       color: Colors.white,
//     )

// : Container(),

          );
      
     
        },
      )),
            ],
          )),    Padding(padding: EdgeInsets.only(left: 40,right: 40),child:    RaisedButton.icon(color: Color(0xff37274a),onPressed: (){
                   
         Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SeaAllCategory()));        }, icon: Icon(Icons.card_travel,color: Colors.white,), label: Text("Add to Bag",style: TextStyle(color: Colors.white),), shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),))],),))
     ],
   ),
    );
  }
}