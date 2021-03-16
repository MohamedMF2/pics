// need helper library from flutter to put content on the screen
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pics/src/widgets/image_list.dart';
import 'models/image.model.dart';
import 'dart:convert';

// create  a class that will be our custom widget
// this class must extend the stateless widget base class
class App extends StatefulWidget{
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState  extends State<App>{
  int counter = 0 ;
  List <ImageModel> images=[];

  void fetchImage() async{
    counter++;
     var   url= Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter');
     var response = await   http.get(url);
     var imageModel = new ImageModel.fromjson(json.decode(response.body));

     setState(() {
       images.add(imageModel);
     });
  }

  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: fetchImage,

        ),
        appBar: AppBar(
          title: Text('Click to see some pics'),

        ),

      ),
    );
  }
}


// must define  a build method that returns
// the widgets that 'this' class will show
