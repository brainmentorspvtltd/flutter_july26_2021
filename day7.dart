import 'package:flutter/material.dart';

void main() {
  // runApp(
  //   Center(
  //     child: Container(
  //       // alignment: Alignment.center,
  //
  //       padding: EdgeInsets.all(20),
  //       //margin: EdgeInsets.all(20),
  //       height: 200,
  //       width: 200,
  //       decoration: BoxDecoration(
  //         // color: Colors.red,
  //         gradient: LinearGradient(
  //           colors: [
  //             Colors.grey,
  //             Colors.green,
  //             Colors.orange,
  //             Colors.purple,
  //           ],
  //         ),
  //       ),
  //       child: Text(
  //         "This is My Container",
  //         textDirection: TextDirection.ltr,
  //         //textAlign: TextAlign.center,
  //       ),
  //     ),
  //   ),
  // );

  runApp(
    MaterialApp(
      title: "MyFirstApp",
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: "MyFonts",
      ),

      //home: Text("Hello Flutter"),
      home: Scaffold(
        // backgroundColor: Colors.amber,
        //backgroundColor: Colors.blueGrey,
        // appBar: AppBar(
        //   leading: Icon(Icons.menu),
        //   title: Text("Column layout"),
        //   //centerTitle: true,
        // ),
        // body: Center(
        //   child: Card(
        //     // color: Colors.transparent,
        //     elevation: 4,
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         "I am In Center",
        //         style: TextStyle(
        //           color: Colors.green,
        //           fontSize: 40,
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        // body: SafeArea(
        //   child: Container(
        //     width: double.infinity,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         // SizedBox(height: 20),
        //         CircleAvatar(
        //           radius: 40,
        //           backgroundColor: Colors.green,
        //           child: CircleAvatar(
        //             radius: 35.0,
        //             backgroundColor: Colors.yellow,
        //           ),
        //         ),
        //         SizedBox(height: 10),
        //         Text(
        //           "Amit Kumar",
        //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        //         ),
        //         Text("Software Engineer"),
        //         SizedBox(height: 10),
        //         // Divider(),
        //         Card(
        //           elevation: 5,
        //           child: Container(
        //             alignment: Alignment.center,
        //             width: 300,
        //             height: 40,
        //             child: Row(
        //               children: [
        //                 Icon(Icons.phone),
        //                 Text(
        //                   "+919090909090",
        //                   //textAlign: TextAlign.center,
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //         SizedBox(height: 10),
        //         Container(
        //           decoration: BoxDecoration(
        //               gradient: LinearGradient(
        //                 colors: [
        //                   Colors.purple,
        //                   Colors.red,
        //                 ],
        //               ),
        //               // border: Border.all(width: 2, color: Colors.black87),
        //               //border: Border(top: BorderSide(width: 5)),
        //               borderRadius: BorderRadius.circular(50),
        //               boxShadow: [
        //                 BoxShadow(color: Colors.black, blurRadius: 5)
        //               ]),
        //           width: 300,
        //           height: 40,
        //           alignment: Alignment.center,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Icon(
        //                 Icons.email,
        //                 color: Colors.white,
        //               ),
        //               SizedBox(
        //                 width: 5,
        //               ),
        //               Text(
        //                 "mymail@gmail.com",
        //                 style: TextStyle(color: Colors.white),
        //                 //textAlign: TextAlign.center,
        //               ),
        //             ],
        //           ),
        //         ),
        //         // Container(
        //         //   color: Colors.red,
        //         //   padding: EdgeInsets.all(10),
        //         //   child: FlutterLogo(
        //         //     size: 60,
        //         //   ),
        //         // ),
        //         // SizedBox(height: 10),
        //         // Container(
        //         //   color: Colors.amber,
        //         //   padding: EdgeInsets.all(10),
        //         //   child: FlutterLogo(
        //         //     size: 60,
        //         //   ),
        //         // ),
        //         // SizedBox(height: 10),
        //         // Container(
        //         //   color: Colors.blueGrey,
        //         //   padding: EdgeInsets.all(10),
        //         //   child: FlutterLogo(
        //         //     size: 60,
        //         //   ),
        //         // )
        //       ],
        //     ),
        //   ),
        // ),

        // body: SafeArea(
        //   child: Row(
        //     // mainAxisSize: MainAxisSize.min,
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Icon(Icons.account_circle),
        //       SizedBox(width: 5),
        //       Text("Amit Kumar"),
        //
        //       // FlutterLogo(size: 50),
        //       // FlutterLogo(size: 50),
        //       // FlutterLogo(size: 50),
        //     ],
        //   ),
        // ),

        body: SafeArea(
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image.asset(
              //   "images/bg.jpeg",
              //   fit: BoxFit.cover,
              // ),
              Container(
                alignment: Alignment.center,
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bg.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "My Image",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: Colors.green,
                          //blurRadius: 10,
                          spreadRadius: 10,
                          offset: Offset(1, 3),
                        ),
                      ]),
                ),
              ),
              SizedBox(height: 5),
              CircleAvatar(
                radius: 32,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/bg.jpeg"),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "This is my Top Heading",
                          style: TextStyle(
                            fontFamily: "SansPro",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "This is my subheading",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Text("44"),
                        SizedBox(width: 30)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.phone),
                      Text("Call"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.email),
                      Text("message"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share),
                      Text("Share"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              // Container(
              //   height: 100,
              //   width: 200,
              //   child: DecoratedBox(
              //     position: DecorationPosition.background,
              //     decoration: BoxDecoration(
              //       color: Colors.red,
              //       // shape: BoxShape.circle,
              //     ),
              //     child: Text("Hello Flutter"),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum ",
                  maxLines: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

//Container widget lets you create a rectangular visual elements. A container can be decorated
//with a decoration property BoxDecoration such

//MaterialApp() widget is based on Material Design Guidelines
//A material app start ith MaterialApp() widget, it provides us:
//1. For Themeing
//2. Navigation and routing
//3. and msut have to use for other Material Widget

//Scaffold()
//is a dart class
//By using Scaffold widget We can use or Scafold Widget provides following APIs:
//1. Drawer
//2. SnackBar()
//3. BottomNavigationBar()
//4. FloatingActionButton()
//5. AppBar()
//etc.

//Layout Widgets
//Column()
//1. for arrangements widgets in vertical manner
//2. Column() is multichild Widget //children:<Widget>[]
//3. Column() and Row()

//Column() mainAxisAlignment: => Top to Bottom, crossAxisAlignment:Left to Right

//Day 7
//SafeArea() this widget is used add some space around our design (noche, statusbar)

//MaterialApp(),
//Scaffold(),
//SafeArea()
//Column(),
//Row(),
//Text(),
//Icon()
//Text(),
