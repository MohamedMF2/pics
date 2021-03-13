// need helper library from flutter to put content on the screen
import 'package:flutter/material.dart';

// create  a class that will be our custom widget
// this class must extend the stateless widget base class
class App extends StatefulWidget{
  createState(){
    return AppState();
  }
}

class AppState  extends State<App>{
  int counter = 0 ;

  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: (){
            setState(() {
              counter += 1;
            });
          },
        ),
        appBar: AppBar(
          title: Text('wul see Some videos'),

        ),

      ),
    );
  }
}


// must define  a build method that returns
// the widgets that 'this' class will show
