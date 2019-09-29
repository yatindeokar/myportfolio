import 'package:flutter/material.dart';
import '../common_widget.dart';
// import '../bubble_anim/particle_background.dart';

class HomePageState extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePage();
  }

}

class HomePage extends State<HomePageState> {

bool socialMenuVisible = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
body: SingleChildScrollView(
  child: Column(

children: <Widget>[

Container(
  height: MediaQuery.of(context).size.height,
  decoration: BoxDecoration(
    
    color: Colors.blueAccent,
    image: DecorationImage(
      fit: BoxFit.fill,
      image: NetworkImage("http://hdqwalls.com/wallpapers/iron-man-hd-2018-bn.jpg"),
      ),
      ),
  
child: Stack(

children: <Widget>[

Container(
  decoration: BoxDecoration(
    color: Colors.black45
    // image: DecorationImage(
      //http://hdqwalls.com/wallpapers/iron-man-hd-2018-bn.jpg
      //https://wallpapercave.com/wp/wp707234.jpg
      //https://www.pixelstalk.net/wp-content/uploads/2016/07/Free-Beautiful-Full-HD-Picture-Download.jpg
    //   //https://wallpapercart.com/wp-content/uploads/2019/09/Comics-Iron-Man-Marvel-Comics-HD-Wallpaper-Background-Image.jpg
    //   //https://images6.alphacoders.com/100/1001721.jpg
    //   image: NetworkImage("https://images6.alphacoders.com/100/1001721.jpg"),
    //   ),
      )
  ),


  // ParticleBackgroundPage(),

CommonWidget(context).header(context),



CommonWidget(context).socialMenu(context),



Center(child: Padding(
  padding: const EdgeInsets.only(top: 120),
  child:   Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
  
  Column(
    children: <Widget>[

CommonWidget(context).customCircularAvtar(
    borderWidth: 2, 
    height: 200,
     url: "https://lh3.googleusercontent.com/-UvBXKbjwxz4/AAAAAAAAAAI/AAAAAAAAAC0/WOmdKB_8iXA/photo.jpg"),

Padding(
  padding: const EdgeInsets.only(top: 10),
  child:   Text("yatindeokar33@gmail.com", style: TextStyle(fontSize: 21, color: Colors.white,)),
),

Padding(
  padding: const EdgeInsets.only(top: 20),
  child:   CommonWidget(context).profileBtn(),
)

    ],
  ),

  SizedBox(width: 100,),

  Padding(
    padding: const EdgeInsets.only(left: 50),
    child: CommonWidget(context).profileData,
  ),
  
  ],
  
  ),
)
),

],

),

),


],

),
)

    );
  }
}
