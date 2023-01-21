import 'package:fancyapp/data/data.dart';
import 'package:fancyapp/data/fulldata.dart';
import 'package:fancyapp/detaildress.dart';
import 'package:fancyapp/seeallCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var itemList = data;
  var listScrollController = new ScrollController();
  var scrollDirection = ScrollDirection.idle;
  List<cartitems> listProduct = [];
  @override
  void initState() {
   
    listScrollController.addListener(() {
      setState(() {
        scrollDirection = listScrollController.position.userScrollDirection;
      });
    });
      Future.delayed(Duration.zero, () {
      this.showAlertDialog();
   });
     
    super.initState();
  }
  void showAlertDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          // width: MediaQuery.of(context).size.width / 1.3,
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            color: const Color(0xFFFFFF),
            borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Expanded(flex: 7,child: Container(  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/lady.jpg'),
                      // colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                      fit: BoxFit.cover,
                    ),
                  ),child: Center(child:Text("Winter Collection",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),)),
            Expanded(flex: 3,child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(child:Text("20% OFF",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                     RaisedButton(color: Colors.purple,onPressed: (){
                                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMode()));
                                      },child: Text("   Shop Now   ",style: TextStyle(color: Colors.white),), shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),)
              ],
            ) )
            ],
          )//Contents here
        ),
      );
    },
  );
}
  bool _scrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification) {
      setState(() {
        scrollDirection = ScrollDirection.idle;
      });
    }
    return true;
  }

  @override
  int currentPage = 0;

  TextEditingController search = new TextEditingController();
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Color(0xff764B8F),
        barBackgroundColor: Colors.white,
        inactiveIconColor: Colors.grey,
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                final FancyBottomNavigationState fState = bottomNavigationKey
                    .currentState as FancyBottomNavigationState;
                fState.setPage(2);
              }),
          TabData(
              iconData: Icons.article,
              title: "Category",
              onclick: () {
                final FancyBottomNavigationState fState = bottomNavigationKey
                    .currentState as FancyBottomNavigationState;
                fState.setPage(2);
              }),
          TabData(
              iconData: Icons.favorite,
              title: "Favourite",
              onclick: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => Forgetpassword()));
              }),
          TabData(iconData: Icons.person, title: "Profile"),
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Title(
            color: Colors.black,
            child: Text(
              "Categories",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
                flex: 37,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/lady.jpg'),
                      // colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                                onPressed: () { }),
                            IconButton(
                                icon: Icon(Icons.shop, color: Colors.white),
                                onPressed: () {})
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "summer collections",
                              style: GoogleFonts.stardosStencil(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "20% off",
                              style: GoogleFonts.stardosStencil(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "for selected spring style",
                              style: GoogleFonts.stardosStencil(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))),
                                onPressed: () {},
                                textColor: Colors.white,
                                color: Color(0xff351239),
                                padding: const EdgeInsets.all(1.0),
                                elevation: 1,
                                child: new Text(
                                  "Shop now",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ],
                      )),
                    ],
                  ),
                )),
            Expanded(
                flex: 46,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Designer Collections",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SeaAllCategory()));
                                  },
                                  child: Text(
                                    "See all +",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          )),
                      Container(
                        child: Center(
                          child: Container(
                            height: 201,
                            // padding: EdgeInsets.symmetric(vertical: 13),
                            child: NotificationListener<ScrollNotification>(
                              onNotification: _scrollNotification,
                              child: ListView(
                                controller: listScrollController,
                                scrollDirection: Axis.horizontal,
                                children: items.map((item) {
                                  return Column(
                                    children: [
                                      Container(
                                          width: 150,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 2),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          decoration: BoxDecoration(
                                              color: Color(item["color"]),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Color(item["color"])
                                                        .withOpacity(0.6),
                                                    offset: Offset(-6, 4),
                                                    blurRadius: 10)
                                              ]),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 120,
                                                child: Image.asset(
                                                  item["image"],
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                              //                    Container(
                                              //  height: 28,
                                              // //  width: 20,
                                              //  decoration: BoxDecoration(
                                              //    color:Color(0xff08C25D),
                                              //    shape: BoxShape.circle,
                                              //  ),
                                              //  child: IconButton(icon: Icon(Icons.favorite,color: Colors.red,size: 15,), onPressed: (){}),

                                              //                      ),

                                              // Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                                            ],
                                          )),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Center(
                                          child: Text(
                                        item["title"],
                                        style: TextStyle(color: Colors.black),
                                      )),
                                      Text(
                                        item["price"],
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 24,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Top Trends",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    "   See all +",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          )),
                      Container(
                        child: Center(
                          child: Container(
                            height: 80,
                            // padding: EdgeInsets.symmetric(vertical: 13),
                            child: NotificationListener<ScrollNotification>(
                              onNotification: _scrollNotification,
                              child: ListView(
                                controller: listScrollController,
                                scrollDirection: Axis.horizontal,
                                children: popular.map((item) {
                                  return Container(
                                      width: 200,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 1),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      decoration: BoxDecoration(
                                          color: Color(item["color"]),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(item["color"])
                                                    .withOpacity(0.6),
                                                offset: Offset(-6, 4),
                                                blurRadius: 10)
                                          ]),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            child: Image.asset(
                                              item["image"],
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 2, vertical: 8),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    item["title"],
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "             450g",
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "\$ 20.00",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              )
                                              // Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                                              )
                                        ],
                                      ));
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            // final FancyBottomNavigationState fState =
            //           bottomNavigationKey.currentState;
            //       fState.setPage(2);
          ],
        );
      case 1:
        return Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
                flex: 10,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 200,
                          height: 40,
                          //  color: Colors.red,
                          child: Padding(
                              padding: EdgeInsets.only(left: 2, right: 2),
                              child: TextField(
                                controller: search,
                                decoration: InputDecoration(
                                    labelText: "Search",
                                    hintText: "Search",
                                    prefixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.0)))),
                              ))),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                                icon: Icon(Icons.favorite), onPressed: () {}),
                            IconButton(icon: Icon(Icons.shop), onPressed: () {})
                          ],
                        ),
                      )
                    ],
                  ),

                  // color: Colors.amber,
                )),
            Expanded(
              flex: 90,
              child: Container(
                child: ListView.builder(
                    itemCount: offer.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              // color: offer[index]['color'],
                              image: DecorationImage(
                                image: AssetImage(offer[index]['image']),
                                colorFilter: ColorFilter.mode(
                                    Colors.black45, BlendMode.darken),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(23)),
                          height: 250,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: Text(offer[index]['title'],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.stardosStencil(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      );
                      //  return Padding(padding: EdgeInsets.only(left: 10,right: 10),
                      //  child:
                      //    Container(

                      //      height: 120,
                      //        decoration: BoxDecoration(
                      //   image: DecorationImage(
                      //     image: AssetImage('asset/u.png'),
                      //     colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
                      //     fit: BoxFit.cover,
                      //   ),
                      //   borderRadius: BorderRadius.circular(23)
                      // ),
                      // child: Text("data"),
                      //    ),
                      //  );
                    }),
              ),
            ),
          ],
        );
      case 2:
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
                flex: 15,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                          Container(
                              width: 200,
                              height: 40,
                              //  color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 2, right: 2),
                                  child: TextField(
                                    controller: search,
                                    decoration: InputDecoration(
                                        labelText: "Search",
                                        hintText: "Search",
                                        prefixIcon: Icon(Icons.search),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25.0)))),
                                  ))),
                          IconButton(
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Color(0xff08C25D),
                              ),
                              onPressed: () {}),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Favourites",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    "See all +",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          )),
                    ],
                  ),
                  // color: Colors.amber,
                )),
            Expanded(
                flex: 73,
                child: Container(
                    child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Detaildress()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                           color: Color(0xffddd5de),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          width: double.infinity,
                          height: 120,
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                                              AssetImage(items[index]['image']),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 30),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[index]['title'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      items[index]['price'],
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 28,
                                          //  width: 20,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: IconButton(
                                              icon: Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                              onPressed: () {}),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              Icons.shopping_cart,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    )
                                  ],
                                ),
                              )
                              // Padding(
                              //   padding:
                              //       EdgeInsets.only(top: 10, left: 20),
                              //   child: Column(
                              //     children: [
                              //        Text(
                              //    items[index]['title'],
                              //     style: TextStyle(
                              //         color: Colors.black,
                              //         fontWeight: FontWeight.bold,
                              //         fontSize: 14),
                              //   ),
                              //     Text(
                              //    items[index]['price'],
                              //     style: TextStyle(
                              //         color: Colors.red,
                              //         fontWeight: FontWeight.bold,
                              //         fontSize: 14),
                              //   ),
                              //     ],
                              //   )

                              // )
                            ],
                          ),
                        ));
                  },
                  padding: EdgeInsets.all(0.0),
                ))),
          ],
        );
      case 3:
        return   Column(
        children: [
          Expanded(flex:40,child: Container(decoration: BoxDecoration(  image: DecorationImage(
                                image: AssetImage("asset/S.jpg"),
                                colorFilter: ColorFilter.mode(
                                    Colors.black45, BlendMode.darken),
                                fit: BoxFit.cover,
                              ),),child:Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Center(child: CircleAvatar(
              //border
              radius: 60,
              backgroundColor: Colors.brown,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'asset/S.jpg'),
              ),
            ),
           
          ), Text("William Smith",style: TextStyle(fontSize: 18,color: Colors.white),)
                              ],) ),
                              ),
          Expanded(flex:60,child: Container(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                height: 100,
                                  decoration: BoxDecoration(
                          color: Color(0xffede9dd),
                          borderRadius: BorderRadius.circular(30)
                        ),
                                  //,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.location_searching),
                                     Container(
                                       width: 180,
                                       child:  Text(
                                            "My address",textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 20),
                                          )),
                                          Icon(Icons.arrow_forward_ios),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.group),
                                     Container(
                                       width: 180,
                                       child:  Text(
                                            "Your account",textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 20),
                                          )),
                                          Icon(Icons.arrow_forward_ios),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                              Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                // height: 100,
                                  decoration: BoxDecoration(
                          color: Color(0xffede9dd),
                          borderRadius: BorderRadius.circular(30)
                        ),
                                  //,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                   Padding(padding:  EdgeInsets.only(top:20),
                              child:        Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.notifications),
                                     Container(
                                       width: 180,
                                       child:  Text(
                                            "Notification",textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 20),
                                          )),
                                          Icon(Icons.arrow_forward_ios),
                                        ],
                                      )),
                                       Padding(padding:  EdgeInsets.only(top:20),
                              child:         Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.vpn_key_sharp),
                                   Container(
                                       width: 180,
                                       child:  Text(
                                            "Password",textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 20),
                                          )),
                                          Icon(Icons.arrow_forward_ios),
                                        ],
                                       )),
                                      Padding(padding:  EdgeInsets.only(top:20),
                              child:      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.language),
                                        Container(
                                       width: 180,
                                       child:  Text(
                                            "Language",textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 20),
                                          )),
                                          Icon(Icons.arrow_forward_ios),
                                        ],
                                      )),
                                       Padding(padding:  EdgeInsets.only(bottom: 20,top:20),
                              child:     Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.sim_card_alert),
                                Container(
                                       width: 180,
                                       child:  Text(
                                            "Term & Condition",textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 20),
                                          )),
                                          Icon(Icons.arrow_forward_ios),
                                        ],
                                       )),
                                    ],
                                  )),
                            ),
          ],
          ),))
        ],
      );


      case 5:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the search page"),
            RaisedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => Loginscreen()));
              },
            )
          ],
        );
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("This is the basket page"),
            RaisedButton(
              child: Text(
                "Start new page",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            )
          ],
        );
    }
  }
}
