import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class EpamColors {
  EpamColors._();

  static const Color EpamBlue = Color(0xFF76cdd8);
  static const Color LimeGreen = Color(0xFFcedb56);
  static const Color Graphite = Color(0xFF222222);
  static const Color White = Color(0xFFffffff);
  static const Color Coral = Color(0xFFd35d47);
  static const Color BrightBlue = Color(0xFF008ace);
  static const Color SharpBlue = Color(0xFF39c2d7);
  static const Color DarkBlue = Color(0xFF263852);
  static const Color DarkGray = Color(0xFF464557);
  static const Color LightGray = Color(0xFFcccccc);
  static const Color WhiteTransparent = Color.fromARGB(120, 255, 255, 255);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textEditingControllerPassword = TextEditingController();
    var textEditingControllerUsername = TextEditingController();
    var focusNode = FocusNode();
    // Value extracted via color reader from iOS simulator.
    const BorderSide _kDefaultRoundedBorderSide = BorderSide(
      color: EpamColors.EpamBlue,
      style: BorderStyle.solid,
      width: 0.0,
    );
    const Border _kDefaultRoundedBorder = Border(
      top: _kDefaultRoundedBorderSide,
      bottom: _kDefaultRoundedBorderSide,
      left: _kDefaultRoundedBorderSide,
      right: _kDefaultRoundedBorderSide,
    );

    return Container(
        decoration: BoxDecoration(color: EpamColors.White),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text("Friday's shop",
                          style: TextStyle(
                              fontSize: 30,
                              color: EpamColors.Graphite,
                              fontFamily: 'vincHand')))
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Container(
                          width: 200,
                          padding: EdgeInsets.only(bottom: 20),
                          child: CupertinoTextField(
                            placeholder: 'Username',
                            decoration: BoxDecoration(
                              border: _kDefaultRoundedBorder,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                            ),
                          )),
                    ),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Container(
                          width: 200,
                          padding: EdgeInsets.only(bottom: 20),
                          child: CupertinoTextField(
                            placeholder: 'Password',
                            obscureText: true,
                            decoration: BoxDecoration(
                              border: _kDefaultRoundedBorder,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                            ),
                          )),
                    ),
                  ],
                ))
          ],
        ));
  }
}
