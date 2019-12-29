import 'package:flutter/material.dart';
import '../styles/Styles.dart';
import '../styles/Theme.dart';
import '../styles/colors.dart';

class ErrorScreen extends StatelessWidget {
//  static const String routename = "/error_screen";

  final String text;

  final ValueChanged<String> parentAction;

  ErrorScreen(this.parentAction, this.text);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Error',
      theme: errorScreenTheme,
      home: Scaffold(
        backgroundColor: errorScreenColor,
        body: Container(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    text,
                    maxLines: 5,
                    textAlign: TextAlign.center,
                    style: errorTextStyle,
                  )),
              Container(
                  child: new RaisedButton(
                child: Text("Retry",
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Roboto-Medium',
                        color: Colors.white)),
                color: retryButtonColor,
                elevation: 4.0,
                onPressed: () {
                  parentAction(null);
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => SplashScreen()),
//                      );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}

//class RandomWordsState extends State<ErrorState> {
//  String text;
//  String errorText = "";
//
//  RandomWordsState(String text) {
//    this.errorText = text;
//  }
//
//  @override
//  void initState() {
//
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        Container(
//          padding: EdgeInsets.all(16.0),
//            child: Text(
//          errorText,
//          textAlign: TextAlign.center,
//          style: errorTextStyle,
//        )),
//        Container(
//          child : new RaisedButton(
//            child: Text("Retry",
//            style: TextStyle(fontSize: 17.0, fontFamily: 'Roboto-Medium', color: Colors.white)
//            ),
//            color: retryButtonColor,
//            elevation: 4.0,
//            onPressed: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => SplashScreen()),
//              );
//            },
//          )
//        )
//      ],
//    );
//  }
//}
//
//class ErrorState extends StatefulWidget {
//  final String errorText;
//
//  ErrorState({this.errorText});
//
//  @override
//  RandomWordsState createState() => new RandomWordsState(errorText);
//}
