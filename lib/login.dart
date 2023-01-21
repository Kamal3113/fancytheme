import 'package:fancyapp/forgot.dart';
import 'package:fancyapp/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String register = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: register != '1'?  Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/d.jpg'),
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
           //   crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          
                
  Container(
child: Row(

  children: [
   
Padding(padding: EdgeInsets.only(left: 20),child:
Text("Login to\nyour account ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
 ) ]
)  
               )
                  
              ,
              Padding(padding: EdgeInsets.only(left: 20,right: 20),child:Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Email',   
                           hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                               focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.white),   
                            ),  
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                      ),  
                    )),
                    SizedBox(height: 10,),
                  TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Password',   
                           hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                               focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.white),   
                            ),  
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                      ),  
                    )),
                                      FlatButton(onPressed: (){
 Navigator.push(context, MaterialPageRoute(builder: (context)=>Forget()));
                        }, child:  Text("Forget password!",style: TextStyle(decoration: TextDecoration.underline,color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),)
                    ],
                  )
                )),
                 Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
           Padding(padding: EdgeInsets.only(left: 30,right: 30),child: RaisedButton(
  onPressed: (){ 
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
     },
     child: Text("Log In",style: TextStyle(color: Color(0xff351239),fontWeight: FontWeight.bold,fontSize: 16),),
  shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(30.0))),
         padding: EdgeInsets.all(12),
)),
                SizedBox(
                  height: 16,
                ),
   Padding(padding: EdgeInsets.only(left: 30,right: 30),child:Row(
    mainAxisAlignment: MainAxisAlignment.center,
     children: [
     Text("Didn\'t have an Account?",style: TextStyle(color: Colors.white),), 
       // ignore: deprecated_member_use
       FlatButton(onPressed: (){setState(() {
       register = '1';
              });
              }, child: Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 16, decoration: TextDecoration.underline,)))
   ],),)
                    ],
                  )
                )
               
              ],
            ),
          ),
        ):Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/d.jpg'),
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
           //   crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          
                
  Container(
child: Row(

  children: [
   
Padding(padding: EdgeInsets.only(left: 20),child:
Text("Sign Up to\nyour account ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
 ) ]
)  
               )
                  
              ,
              Padding(padding: EdgeInsets.only(left: 20,right: 20),child:Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Email',   
                           hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                               focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.white),   
                            ),  
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                      ),  
                    )),
                    SizedBox(height: 10,),
                  TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Password',   
                           hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                               focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.white),   
                            ),  
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                      ),  
                    )),
                     SizedBox(height: 10,),
                  TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',   
                           hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
                               focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(      
                            borderSide: BorderSide(color: Colors.white),   
                            ),  
                          focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                      ),  
                    )),
                                      FlatButton(onPressed: (){
 //Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgetpasssword()));
                        }, child:  Text("Forget password!",style: TextStyle(decoration: TextDecoration.underline,color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),)
                    ],
                  )
                )),
                 Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
           Padding(padding: EdgeInsets.only(left: 30,right: 30),child: RaisedButton(
  onPressed: (){ 
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Entermobile()));
     },
     child: Text("Register",style: TextStyle(color: Color(0xff351239),fontWeight: FontWeight.bold,fontSize: 16),),
  shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(30.0))),
         padding: EdgeInsets.all(12),
)),
                SizedBox(
                  height: 16,
                ),
   Padding(padding: EdgeInsets.only(left: 30,right: 30),child:Row(
    mainAxisAlignment: MainAxisAlignment.center,
     children: [
     Text("Have an Account?",style: TextStyle(color: Colors.white),), 
       // ignore: deprecated_member_use
       FlatButton(onPressed: (){setState(() {
       register = '0';
              });}, child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 16, decoration: TextDecoration.underline,)))
   ],),)
                    ],
                  )
                )
               
              ],
            ),
          ),
        ),
    );
  }
}
