import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/image.model.dart';

class ImageList extends StatelessWidget {
  final List <ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return imageBuilder(images[index]);
        } //itemBuilder
    );
  }
Widget  imageBuilder(ImageModel image){
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(20.0),

      child: Column(
        children: [
          Padding(
              child: Image.network(image.url),
              padding: EdgeInsets.only(
                  bottom:10.0
              ),
          ),
          Text(image.title),
        ],
      ),
    );
  }
}