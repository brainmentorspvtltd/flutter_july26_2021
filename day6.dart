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
      theme: ThemeData(primarySwatch: Colors.purple),

      //home: Text("Hello Flutter"),
      home: Scaffold(
        //backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Column layout"),
          //centerTitle: true,
        ),
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

        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.yellow,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Amit Kumar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text("Software Engineer"),
              SizedBox(height: 10),
              // Divider(),
              Card(
                elevation: 5,
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 40,
                  child: Text(
                    "+919090909090",
                    //textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                //  color: Colors.yellow,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.purple,
                  Colors.red,
                ])),
                width: 300,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  "mymail@gmail.com",
                  style: TextStyle(color: Colors.white),
                  //textAlign: TextAlign.center,
                ),
              ),
              // Container(
              //   color: Colors.red,
              //   padding: EdgeInsets.all(10),
              //   child: FlutterLogo(
              //     size: 60,
              //   ),
              // ),
              // SizedBox(height: 10),
              // Container(
              //   color: Colors.amber,
              //   padding: EdgeInsets.all(10),
              //   child: FlutterLogo(
              //     size: 60,
              //   ),
              // ),
              // SizedBox(height: 10),
              // Container(
              //   color: Colors.blueGrey,
              //   padding: EdgeInsets.all(10),
              //   child: FlutterLogo(
              //     size: 60,
              //   ),
              // )
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
