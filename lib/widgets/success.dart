import 'package:flutter/material.dart';

import 'loadingbuttion.dart';

class Success extends StatelessWidget {
  var result1 = "";
  var result2 = "";
  var result3 = "";
  var result4 = "";
  var result5 = "";
  var result6 = "";
  Function reset;

  Success({
    @required this.result1,
    @required this.result2,
    @required this.result3,
    @required this.result4,
    @required this.result5,
    @required this.result6,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(60),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 4),
            child: Text(
              result1,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontFamily: "Big Soulders Display"),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 4),
            child: Text(
              result2,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontFamily: "Big Soulders Display"),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 4),
            child: Text(
              result3,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontFamily: "Big Soulders Display"),
                textAlign: TextAlign.left),
          ),              
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 4),
            child: Text(
              result4,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontFamily: "Big Soulders Display"),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 4),
            child: Text(
              result5,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontFamily: "Big Soulders Display"),
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 4),
            child: Text(
              result6,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontFamily: "Big Soulders Display"),
                textAlign: TextAlign.left),
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButtions(
            lbusy: false,
            func: reset,
            text: "Calcular Novamente",
            invert: true
          )
        ]));
  }
}
