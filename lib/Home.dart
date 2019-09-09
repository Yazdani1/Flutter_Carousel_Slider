import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Image Carosol"),
        backgroundColor: Colors.green,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.remove_red_eye),
              onPressed: ()=>debugPrint("Eye")
          ),

          new IconButton(
              icon: new Icon(Icons.face),
              onPressed: ()=>debugPrint("Face")
          )

        ],
      ),
    );
  }
}
