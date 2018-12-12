import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class EpamColors {
  EpamColors._();

  static const Color EpamBlue = Color(0xFF76cdd8);
  static const Color EpamBlue50 = Color.fromARGB(100, 118, 205, 216);
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

class LoginScreenState extends State<MyApp> {
  bool tapped = false;
  bool goLogin = true;

  @override
  Widget build(BuildContext context) {
    var textEditingControllerPassword = TextEditingController();
    var textEditingControllerUsername = TextEditingController();
    var focusNode = FocusNode();
    // Value extracted via color reader from iOS simulator.
    const BorderSide _kDefaultRoundedBorderSide = BorderSide(
      color: EpamColors.EpamBlue,
      style: BorderStyle.solid,
      width: 1.0,
    );
    const Border _kDefaultRoundedBorder = Border(
      top: _kDefaultRoundedBorderSide,
      bottom: _kDefaultRoundedBorderSide,
      left: _kDefaultRoundedBorderSide,
      right: _kDefaultRoundedBorderSide,
    );
    // Default iOS style from HIG specs with larger font.
    const TextStyle _kDefaultTextStyle = TextStyle(
      fontFamily: 'vincHand',
      fontSize: 18.0,
      color: EpamColors.Graphite,
      decoration: TextDecoration.none,
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
                  Container(
                    padding: EdgeInsets.only(bottom: 50),
                    child:
                        Image.asset('lib/smiling.png', width: 50, height: 50),
                  ),
                  Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text("Friday's shop",
                          style: TextStyle(
                              fontSize: 35,
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
                          width: 280,
                          height: 30,
                          margin: EdgeInsets.only(bottom: 20),
                          child: CupertinoTextField(
                            placeholder: 'Username',
                            textAlign: TextAlign.start,
                            decoration: BoxDecoration(
                              border: _kDefaultRoundedBorder,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.0)),
                            ),
                            style: _kDefaultTextStyle,
                          )),
                    ),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Container(
                          width: 280,
                          height: 30,
                          margin: EdgeInsets.only(bottom: 20),
                          child: CupertinoTextField(
                            placeholder: 'Password',
                            textAlign: TextAlign.start,
                            obscureText: true,
                            decoration: BoxDecoration(
                              border: _kDefaultRoundedBorder,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.0)),
                            ),
                            style: _kDefaultTextStyle,
                          )),
                    ),
                    GestureDetector(
                        onTapUp: this.onLoginTapUp,
                        onTapDown: this.onLoginTapDown,
                        onTapCancel: this.onLoginTapCancel,
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: this.tapped ? EpamColors.EpamBlue50 : EpamColors.EpamBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.0))),
                          child: Center(
                              child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Text('login',
                                      style: TextStyle(
                                        fontFamily: 'vincHand',
                                        color: EpamColors.White,
                                      )))),
                        ))
                  ],
                ))
          ],
        ));
  }

  void onLoginTapUp(tapUpDetails) {
    setState(() {
      tapped = false;
      goLogin = true;
    });
  }

  void onLoginTapDown(tapDownDetails) {
    setState(() {
      tapped = true;
    });
  }

  void onLoginTapCancel() {
    setState(() {
      tapped = false;
    });
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}
