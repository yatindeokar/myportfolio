import 'package:flutter/material.dart';
import 'package:flutter_web_demo/common_widget.dart';
import 'package:universal_html/html.dart' as html;

class WorkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WorkPageState();
  }
}

class WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    mgridItem(int index) {
      String link = CommonWidget(context).appsLink[index];
      return InkWell(
        hoverColor: Colors.white,
        focusColor: Colors.white,
        highlightColor: Colors.white12,
        onTap: () {
          html.window.open(link, "Play Store");
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: width/3.5,
                        height: width/3.5,
                        child: Image.network(
                          CommonWidget(context).appsIcons[index],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          CommonWidget(context).appsNames[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          CommonWidget(context).appsDescriptions[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 2),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        OutlineButton(
                          color: Colors.black38,
                          hoverColor: Colors.white12,
                          highlightColor: Colors.blueGrey,
                          child: Text(
                            "More",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 1.0),
                          onPressed: () {
                            html.window.open(link, "Play Store");
                          },
                          highlightedBorderColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      );
    }

    // TODO: implement build
    return Scaffold(
        body: Column(
      children: <Widget>[
        AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "Work",
            style: TextStyle(color: Colors.white, fontSize: 31),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.black,
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              itemCount: CommonWidget(context).appsNames.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (orientation == Orientation.portrait) ? 1 : 2),
              itemBuilder: (context, intex) => mgridItem(intex),
            ),
          ),
        ),
      ],
    ));
  }
}
