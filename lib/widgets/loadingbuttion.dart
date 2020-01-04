import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingButtions extends StatelessWidget {
  var lbusy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButtions({
    @required this.lbusy,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return lbusy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: SpinKitFadingCircle(
              color: Colors.white,
            )
            )
        : Container(
            margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
            height: 60,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: invert
                  ? Colors.deepOrange
                  : Colors.white.withOpacity(0.8),
            ),
            child: FlatButton(
              onPressed: func,
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: "Big Soulders Display",
                  fontSize: 30,
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                ),
              ),
            ),
          );
  }
}
