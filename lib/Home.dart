import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      backgroundColor: Color(0xFF222240),
      
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


      body: Center(
        child: Container(
          height: 350.0,
          width: 300.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 7.0,
            dotIncreasedColor: Colors.red,
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomLeft,
            dotVerticalPadding: 7.0,
            showIndicator: true,
            borderRadius: true,
            indicatorBgPadding: 10.0,
            overlayShadow: true,
            overlayShadowColors: Colors.black.withOpacity(0.4),
            overlayShadowSize: 10.0,
            images: [
              NetworkImage('https://www.bls.gov/spotlight/2017/sports-and-exercise/images/cover_image.jpg'),
              NetworkImage('https://www.lboro.ac.uk/media/wwwlboroacuk/external/content/research/sti/slide1.png'),
              NetworkImage('https://www.gc.ac.nz/wp-content/uploads/2018/03/sports-tools-640-417.jpg'),
              NetworkImage('https://www.valeofglamorgan.gov.uk/Images/Sports/Sports-equipment-Cropped-600x313.jpg')

            ],
          ),
        ),
      ),



    );
  }
}
