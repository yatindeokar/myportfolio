import 'package:flutter/material.dart';
import 'package:flutter_web_demo/common_widget.dart';

class AboutPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutPageState();
  }

}

class AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              title: Text("About", style: TextStyle(color: Colors.white,fontSize: 31),),),

      body: new Center(
        child: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[

            Text(CommonWidget(context).about,
             style: TextStyle(color: Colors.white, fontSize: 21, letterSpacing: 2, wordSpacing: 2)),


          ],
        )
      )
    );
  }
  
}

