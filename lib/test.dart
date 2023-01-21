import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  List brands =["Adidas",
"Nike",
"Reebok",
"Puma",
"Nike",
"Reebok",
"Puma"
];
List brands1 =["weee",
"deee",
"feww",
"fqeee",
"Nike",
"Reebok",
"Puma"
];
int select;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 5,child: Container(child:  ListView.builder(itemCount: brands.length,itemBuilder: (BuildContext context,int index){
return InkWell(onTap: (){
  setState(() {
      select = index;
    });
},child: Card(color: select==index?Colors.red:Colors.amber  ,child:Padding(padding: EdgeInsets.all(15),child:Text(brands[index]),) ),);

              }),)),
             Expanded(flex: 5,child: Container(child:  ListView.builder(itemCount: brands1.length,itemBuilder: (BuildContext context,int index){
return Card(child:Padding(padding: EdgeInsets.all(15),child:Text(brands1[index]),) );
              }),))
      ],)
      // Column(
      //   children: [
      //     Expanded(flex:40,child: Container(decoration: BoxDecoration(  image: DecorationImage(
      //                           image: AssetImage("asset/S.jpg"),
      //                           colorFilter: ColorFilter.mode(
      //                               Colors.black45, BlendMode.darken),
      //                           fit: BoxFit.cover,
      //                         ),),child:Column(mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                           Center(child: CircleAvatar(
      //         //border
      //         radius: 60,
      //         backgroundColor: Colors.brown,
      //         child: CircleAvatar(
      //           radius: 50,
      //           backgroundImage: AssetImage(
      //               'asset/S.jpg'),
      //         ),
      //       ),
           
      //     ), Text("William Smith",style: TextStyle(fontSize: 18,color: Colors.white),)
      //                         ],) ),
      //                         ),
      //     Expanded(flex:60,child: Container(child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Padding(
      //                         padding: EdgeInsets.only(left: 20, right: 20),
      //                         child: Container(
      //                           height: 100,
      //                             decoration: BoxDecoration(
      //                     color: Color(0xffede9dd),
      //                     borderRadius: BorderRadius.circular(30)
      //                   ),
      //                             //,
      //                             child: Column(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.spaceEvenly,
      //                               children: [
      //                                 Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.spaceAround,
      //                                   children: [
      //                                     Icon(Icons.location_searching),
      //                                Container(
      //                                  width: 180,
      //                                  child:  Text(
      //                                       "My address",textAlign: TextAlign.center,
      //                                       style: TextStyle(fontSize: 20),
      //                                     )),
      //                                     Icon(Icons.arrow_forward_ios),
      //                                   ],
      //                                 ),
      //                                 Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.spaceAround,
      //                                   children: [
      //                                     Icon(Icons.group),
      //                                Container(
      //                                  width: 180,
      //                                  child:  Text(
      //                                       "Your account",textAlign: TextAlign.center,
      //                                       style: TextStyle(fontSize: 20),
      //                                     )),
      //                                     Icon(Icons.arrow_forward_ios),
      //                                   ],
      //                                 ),
      //                               ],
      //                             )),
      //                       ),
      //                         Padding(
      //                         padding: EdgeInsets.only(left: 20, right: 20),
      //                         child: Container(
      //                           // height: 100,
      //                             decoration: BoxDecoration(
      //                     color: Color(0xffede9dd),
      //                     borderRadius: BorderRadius.circular(30)
      //                   ),
      //                             //,
      //                             child: Column(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.spaceEvenly,
      //                               children: [
      //                              Padding(padding:  EdgeInsets.only(top:20),
      //                         child:        Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.spaceAround,
      //                                   children: [
      //                                     Icon(Icons.notifications),
      //                                Container(
      //                                  width: 180,
      //                                  child:  Text(
      //                                       "Notification",textAlign: TextAlign.center,
      //                                       style: TextStyle(fontSize: 20),
      //                                     )),
      //                                     Icon(Icons.arrow_forward_ios),
      //                                   ],
      //                                 )),
      //                                  Padding(padding:  EdgeInsets.only(top:20),
      //                         child:         Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.spaceAround,
      //                                   children: [
      //                                     Icon(Icons.vpn_key_sharp),
      //                              Container(
      //                                  width: 180,
      //                                  child:  Text(
      //                                       "Password",textAlign: TextAlign.center,
      //                                       style: TextStyle(fontSize: 20),
      //                                     )),
      //                                     Icon(Icons.arrow_forward_ios),
      //                                   ],
      //                                  )),
      //                                 Padding(padding:  EdgeInsets.only(top:20),
      //                         child:      Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.spaceAround,
      //                                   children: [
      //                                     Icon(Icons.language),
      //                                   Container(
      //                                  width: 180,
      //                                  child:  Text(
      //                                       "Language",textAlign: TextAlign.center,
      //                                       style: TextStyle(fontSize: 20),
      //                                     )),
      //                                     Icon(Icons.arrow_forward_ios),
      //                                   ],
      //                                 )),
      //                                  Padding(padding:  EdgeInsets.only(bottom: 20,top:20),
      //                         child:     Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.spaceAround,
      //                                   children: [
      //                                     Icon(Icons.sim_card_alert),
      //                           Container(
      //                                  width: 180,
      //                                  child:  Text(
      //                                       "Term & Condition",textAlign: TextAlign.center,
      //                                       style: TextStyle(fontSize: 20),
      //                                     )),
      //                                     Icon(Icons.arrow_forward_ios),
      //                                   ],
      //                                  )),
      //                               ],
      //                             )),
      //                       ),
      //     ],
      //     ),))
      //   ],
      // ),
    );
  }
}