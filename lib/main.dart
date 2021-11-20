import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}


class MyHomePage extends StatefulWidget{
    @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}


class MyHomePageState extends State<MyHomePage>{

  var key = 0;


  Widget build(BuildContext context){  

    print("Build Method");

    return MaterialApp(
      home: DefaultTabController(length: 6, child: Scaffold(appBar: AppBar(
        title: Text("My App"),
        bottom: TabBar(
          isScrollable: true,
          //indicatorColor: Colors.yellow,
          //indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 10,
          tabs: [
        Tab(icon: Icon(Icons.home) ,child: Text("Home"),),
        Tab(icon: Icon(Icons.verified_user) ,child: Text("Profile"),),

        Tab(icon: Icon(Icons.home) ,child: Text("Home 2"),),
        Tab(icon: Icon(Icons.verified_user) ,child: Text("Profile 2"),),

        Tab(icon: Icon(Icons.home) ,child: Text("Home 3"),),
        Tab(icon: Icon(Icons.verified_user) ,child: Text("Profile 3"),),
        
      ]),),
      body: MyHome(), 
      )
      )
    );
  }
}


class MyHome extends StatelessWidget{
  Widget build(BuildContext context){


    return TabBarView(children: [
      Text("Home Page"),
      Text("Profile Page"),

      Text("Home Page 1"),
      Text("Profile Page 1"),

      Text("Home Page 3"),
      Text("Profile Page 3")
      
    ]
    );
    

  }

}


