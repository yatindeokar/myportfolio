// import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_web_demo/responsive_widget.dart';
import '../common_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                elevation: 0.0,
                backgroundColor: Colors.black12,
              )
            : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                elevation: 10,
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: CommonWidget(context).navButtons(),
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
            child: ResponsiveWidget(
              largeScreen: Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    NavHeader(navButtons: CommonWidget(context).navButtons()),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    ProfileInfo(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    SocialInfo(),
                  ],
                ),
              ),
            ),
          ),
        ),
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
      this.color = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.27
            : MediaQuery.of(context).size.width * 0.27,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.27
            : MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.all(
              new Radius.circular(MediaQuery.of(context).size.width * 0.2)),
          border: new Border.all(
            color: Colors.white,
            width: 2,
          ),
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.transparent,
//            borderRadius: BorderRadius.circular(40),
          // shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
                "https://lh3.googleusercontent.com/-UvBXKbjwxz4/AAAAAAAAAAI/AAAAAAAAAC0/WOmdKB_8iXA/photo.jpg"), //AssetImage("rss.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              profileImage(context),
              CommonWidget(context).profileBtn()
            ],
          ),
          CommonWidget(context).profileData
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              profileImage(context),
              CommonWidget(context).profileBtn()
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          CommonWidget(context).profileData
        ],
      ),
    );
  }
}


