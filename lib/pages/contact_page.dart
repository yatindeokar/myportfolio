import 'package:flutter/material.dart';
import 'package:flutter_web_demo/common_widget.dart';

class ContactPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactPageState();
  }

}

class ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              title: Text("Contact", style: TextStyle(color: Colors.white,fontSize: 31),),),

      body: new Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

                Text("Drop me a Mail at",
             style: TextStyle(color: Colors.white, fontSize: 21, letterSpacing: 2, wordSpacing: 2)),

            Text("Email: yatindeokar33@gmail.com",
             style: TextStyle(color: Colors.white, fontSize: 21, letterSpacing: 2, wordSpacing: 2)),

        
          

          ],
        )
      )
    );
  }
  
}

