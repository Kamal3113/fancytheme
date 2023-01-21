import 'package:fancyapp/signupoption.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class startScreen extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<startScreen> with WidgetsBindingObserver {
  Image image1;


void initState() {
// image1 = Image.asset("asset/w.jpg");
super.initState();
ImageProvider logo = AssetImage("asset/w.jpg");
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Stack(
          children: [
            Column(
              children: [
Expanded(flex:50,child: Container(decoration: BoxDecoration(
                   image: DecorationImage(
              image: AssetImage('asset/2.jpg'),
            //  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              fit: BoxFit.cover,
            ),),child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(
                  'Fancy',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.stardosStencil(
    fontSize: 50,
    fontWeight: FontWeight.bold,
color: Colors.white,
  ),
                  // style: TextStyle(
                   
                  //   fontSize: 35.0,
                  //   fontWeight: FontWeight.bold,
                  //   color: Colors.white,
                  // ),
                ),
                
                Text(
                  'Fashion you cant resist',
                  textAlign: TextAlign.center,
                      style: GoogleFonts.abrilFatface(
    fontSize: 25,
    fontWeight: FontWeight.bold,
color: Colors.white,
  ),
                  // style: TextStyle(
                  //   fontSize: 25.0,
                  //   fontWeight: FontWeight.bold,
                  //   color: Colors.white,
                  // ),
                ),
              ],
            ),),)),
                 Expanded(flex:50,child: Container(decoration: BoxDecoration(
                   image: DecorationImage(
              image: AssetImage('asset/q.jpg'),
            //  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              fit: BoxFit.scaleDown,
            ),),child: Center(child:
                 
                
                Text(
                  'Shop the\nmost popular\nfashion wear',
                  textAlign: TextAlign.center,
                       style: GoogleFonts.abrilFatface(
    fontSize: 25,
    fontWeight: FontWeight.bold,
color: Colors.white,
  ),
                  // style: TextStyle(
                  //   fontSize: 25.0,
                  //   fontWeight: FontWeight.bold,
                  //   color: Colors.white,
                  // ),
             
            ),),))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
 Padding(padding: EdgeInsets.only(left: 10,right: 10),child: RaisedButton(
     color: Color(0xff351239),
  onPressed: (){ 
       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpption()));
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Entermobile()));
     },
     child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
  shape: RoundedRectangleBorder(
 
         borderRadius: BorderRadius.all(Radius.circular(30.0))),
         padding: EdgeInsets.all(12),
)),
                  ],
                ) 
      
          
              ],
            )
        
          ],
        ),
      )
//        Column(children: [
   
//   Expanded(flex: 50,child:Container(color: Colors.amber,) ),
//    Stack(
//         children: [
//            Transform.translate(
//           offset: Offset(0.0, -50 / 2.0),
//           child: Center(child:
// RaisedButton(onPressed: (){},child: Text("data"),)
//            )),Container(height: 20, color: Colors.red,) ],
//       ),
//    Expanded(flex: 50,child:Container(color: Colors.blue,) )
         
      
//       ],)
//       // SafeArea(
//       //   child: _buildColumn(),
//       // ),
//     );
//   }

//   Widget _buildColumn() => Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           // First blue container
//           _buildTopContainer(),
//           // Button with offset
//           _buildMidContainerWithButton(),
//           // Bottom white container
//           _buildBottomContainer(),
//         ],
//       );

//   Widget _buildTopContainer() => Flexible(
//         flex: 10,
//         child: Container(
//           color: Colors.blue[900],
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Top container',
//                 style: TextStyle(
//                   fontSize: 17.0,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );

//   Widget _buildMidContainerWithButton() {
//     final buttonHeight = 40.0;
//     return
//      Stack(
//       children: [
//     //     // Use same background color like the second container
//         //Container(height: buttonHeight, color: Colors.red),
//         // Translate the button 
//         Transform.translate(
//           offset: Offset(0.0, -buttonHeight / 2.0),
//           child: Center(
//             child: GestureDetector(
//               onTap: () { /* do stuff */ },
//               child: Container(
//                 height: buttonHeight,
//                 decoration: BoxDecoration(
//                   color: Colors.orange[400],
//                   borderRadius: BorderRadius.circular(buttonHeight / 2.0),
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 16.0,
//                       offset: Offset(0.0, 6.0),
//                       color: Colors.black.withOpacity(0.16),
//                     ),
//                   ],
//                 ),
//                 padding: const EdgeInsets.fromLTRB(24.0, 3.0, 24.0, 0.0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(
//                       Icons.photo_camera_outlined,
//                       size: 20.0,
//                       color: Colors.white,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8.0),
//                       child: Text(
//                         'Use camera',
//                         style: TextStyle(
//                           fontSize: 17.0,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }

//   Widget _buildBottomContainer() => Flexible(
//         flex: 5,
//         child: Container(
//           color: Colors.red,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//             Text(
//               'Bottom container',
//               style: TextStyle(
//                 fontSize: 17.0,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black54,
//               ),
//             ),
//           ]),
//         ),
      );
}}