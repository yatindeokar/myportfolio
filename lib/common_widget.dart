import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
// import 'package:universal_html/js.dart';
import 'responsive_widget.dart';
import './pages/about_page.dart';
import './pages/work_page.dart';
import './pages/contact_page.dart';

class CommonWidget {

String about = "   I am an experienced Android developer and a UI/UX Designer interested in the newest technologies and trends.\n \n"+

"I have obtained a B.E. degree from the Mumbai University in Information Technology.\n \n"

"I have in total over 3+ years of active Android development experience. I have worked on numerous projects used by hundreds of thousands of people. Snaptasic selfie challenge app and Jobportal Appplication just a few.I have created two Android Open Source libraries"+
"MyLoadingButton and DualMultiSelection Spinner are available on GitHub and like to contribute more.I am UI/UX and Logo designer as well who fond of animations an prototypes.\n \n"+

"I am eager to constantly learn new things. At the moment, my focus is on the new Flutter(Mobile) and Flutter(Web), Cross Platform features, RxJava and RxAndroid, Kotlin, architectural patterns on Android (MVVM, MVP, etc.) and of course I am always up for trying out the newest Android libraries.\n \n"+

"For a comprehensive list of my work, please refer to my work page.\n \n"+

"In case you are interested in cooperation with me, do not hesitate to contact me at yatindeokar33@gmail.com";


BuildContext context;
CommonWidget(this.context);

List<String> appsIcons = ["https://lh3.googleusercontent.com/FBQuJug5iM8jUoPSDcbvOUhhdmoIFSePi1jJ3OOeAtTvHsIs6-4NleOog0nRJ-U6K8Q=s180-rw",
 "https://lh3.googleusercontent.com/tJ5n5vxXWNvW-B-kErn9QneXCzEQW6QIm8tnfqWtLzlTuObwkWw4nCysGEsjEiYypVc=s180-rw", 
 "https://lh3.googleusercontent.com/nCbSl5s1U-K01YIzrlQ5I9Fu73qT-jmr3OzZl4eE8SUq23um4SgynCq_UEclZXacmQ=s180-rw",
 "https://lh3.googleusercontent.com/ObC7O3h2b3DrP_30y68lyUONiXogRNvCH1aCd0TqwFbkCAwMSrRrzHQtiu19HJ9Z03w=s180-rw",
 "https://lh3.googleusercontent.com/EyL-4ve0Wi3Xl3jDs71Y2Pbp2HjxHGTrDhHIKI-fywHw3f9539N2LQLLyQoY3R8YTzvs=s180-rw"];

List<String> appsNames = ["GetSetGoApp - Todo List",
 "Snaptastic - Selfie Challenge", 
 "Best Quotes in the world", 
 "Fundaily - Stickers for Messages, Videos, Images",
 "Wallexy - Wallpapers"];

List<String> appsDescriptions = ["GetSetGo App is a simple and effective app to keep track of your goals, tasks, and responsibilities in an easy way. get the powerful experience of offline task management ",
 "We are building a crazy community of users who would go to any lengths to challenge each other by clicking better pictures. Think you can compete? Go ahead and give it a try.",
 "Best handpicked quotes in the world. Start your day and stay motivated by reading these amazing quotes. Express your feelings and mood with these quotes.", 
 "Stickers have finally arrived on WhatsApp! We bring you the best application with which you can share stickers packs with your WhatsApp friends. We offer you assorted stickers packs so you can choose the one you like best.",
 "Wallexy wallpaper is an application that provides beautiful unique wallpapers, free painting wallpapers & the best photos wallpapers for Android phones. It is built to meet the ever-changing needs of the home screen and lock screen."];

List<String> appsLink = ["https://play.google.com/store/apps/details?id=com.yatin.deokar.getsetgo",
"https://play.google.com/store/apps/details?id=com.selfieapp.android", 
"https://play.google.com/store/apps/details?id=com.techwaves.quotes",
"https://play.google.com/store/apps/details?id=fundaily.stickers.messages",
"https://play.google.com/store/apps/details?id=com.yatin.deokar.wallexywallpapersapp"];


  List<Widget> navButtons() => [
        NavButton(
          text: "About",
          color: Colors.white,
          onPressed: () {
            print("nav....");
            Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutPage()));
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: NavButton(
            text: "Work",
            color: Colors.white,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> WorkPage()));
            },
          ),
        ),
        NavButton(
          text: "Contact",
          color: Colors.white,
          onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactPage()));
          },
        ),
      ];

  Widget header(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      decoration: BoxDecoration(
        // color: Colors.black54,
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            stops: [0.2, 0.4, 1.0],
            tileMode: TileMode.repeated,
            colors: [Colors.black, Colors.black87, Colors.transparent]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Wrap(
              children: <Widget>[
                Text(
                  "YATIN DEOKAR",
                  textScaleFactor: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Row(
              children: CommonWidget(context).navButtons(),
            ),
          )
        ],
      ),
    );
  }

  Widget socialMenu(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Visibility(
        visible: true,
        child: Container(
          width: MediaQuery.of(context).size.width / 9.7,
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(width: 0.0, color: Colors.transparent))),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: new Image.asset('assets/icons/linkedin.png'),
                  hoverColor: Colors.white12,
                  onPressed: () {
                    html.window.open(
                        "https://www.linkedin.com/in/yatin-deokar-673a30106", "About Me");
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                IconButton(
                  icon: new Image.asset(
                    'assets/icons/instagram.png',
                    width: 50,
                    height: 50,
                  ),
                  hoverColor: Colors.red,
                  onPressed: () {
                     html.window
                  .open("https://www.instagram.com/yatin_deokar/", "About Me");
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                IconButton(
                  icon: new Image.asset('assets/icons/github.png'),
                  hoverColor: Colors.white12,
                  onPressed: () {
                     html.window
                  .open("https://github.com/yatindeokar", "About Me");
                  },
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customCircularAvtar({double height, double borderWidth, String url}) {
    return Container(
      width: height,
      height: 300.0,
      decoration: new BoxDecoration(
        color: Colors.white,
        image: new DecorationImage(
          image: new NetworkImage(url),
          fit: BoxFit.cover,
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(height / 2)),
        border: new Border.all(
          color: Colors.white,
          width: borderWidth,
        ),
      ),
    );
  }

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.orange),
      ),
      Text(
        "Yatin \nI. Deokar",
        textScaleFactor: 3,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Experienced Mobile Application Developer \nwith a demonstrated history of working in the \ninformation technology, banking and services industry.\n\n"
        "Skilled in Mobile Applications, Cross-Platform (Flutter),\n Android, Dart, and UI/UX Design.\n\n"
        "Strong engineering professional with a \nBachelor of Engineering (B.E) focused in \nInformation Technology Engineering \nfrom Mumbai University. \n",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );

  Widget profileBtn() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text(
              "Resume",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: () {
              html.window
                  .open('https://drive.google.com/file/d/1qXyaGOUcnC5Fs9FUAhJk07Xng_kY8PTn/view?usp=sharing', "About Me");

              // html.window.location.assign('https://drive.google.com/file/d/1qXyaGOUcnC5Fs9FUAhJk07Xng_kY8PTn/view?usp=sharing');
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          RaisedButton(
            shape: StadiumBorder(),
            child: Text(
              "Say Hi!",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: () {
              html.window.open("https://www.facebook.com/yatin.deokar", "Yatin");
            },
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }




}



class LiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Text(
          "YATIN DEOKAR",
          textScaleFactor: 2,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

class NavHeader extends StatelessWidget {
  final List<Widget> navButtons;

  const NavHeader({Key key, this.navButtons}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: ResponsiveWidget.isSmallScreen(context)
          ? Wrap(
              alignment: ResponsiveWidget.isSmallScreen(context)
                  ? WrapAlignment.center
                  : MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LiveDot(),
//          Spacer(),
                if (!ResponsiveWidget.isSmallScreen(context))
                  Row(
                    children: navButtons,
                  )
              ],
            )
          : Row(
              mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                LiveDot(),
//          Spacer(),
                if (!ResponsiveWidget.isSmallScreen(context))
                  Row(
                    children: navButtons,
                  )
              ],
            ),
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      color: Colors.black38,
      hoverColor: Colors.white12,
      highlightColor: Colors.blueGrey,
      child: Text(
        text,
        style: TextStyle(
            color: Colors.blue, fontSize: 21, fontWeight: FontWeight.normal),
      ),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      IconButton(
        icon: new Image.asset('assets/icons/linkedin.png'),
        hoverColor: Colors.white12,
        onPressed: () {
          html.window.open(
              "https://www.linkedin.com/in/yatin-deokar-673a30106", "LinkedIn");
        },
      ),
      IconButton(
        icon: new Image.asset('assets/icons/github.png'),
                  hoverColor: Colors.white12,
                  onPressed: () {
                     html.window
                  .open("https://github.com/yatindeokar", "Github");
                  },
      ),
      IconButton(
        icon: new Image.asset('assets/icons/twitter.png'),
        hoverColor: Colors.white12,
        onPressed: () {
          html.window.open(
              "https://twitter.com/yatin_deokar", "Twitter");
        },
      ),
    ];
  }

  Widget copyRightText() => Text(
        "Made with ❤️ in India using Flutter Web by Yatin Deokar.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          // copyRightText(),
        ],
      ),
      smallScreen: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: socialMediaWidgets(),
        // children: <Widget>[


        //   // ...socialMediaWidgets(),
        //   // copyRightText(),
        // ],
      ),
    );
  }
}

