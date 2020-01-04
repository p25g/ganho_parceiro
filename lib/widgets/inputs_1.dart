import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class MyInputs extends StatelessWidget {
  var label1 = "";
  var moneycont = MoneyMaskedTextController();
  var hintcont = "";

  MyInputs({
    @required this.label1,
    @required this.moneycont,
    @required this.hintcont,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 140,
          height: 140,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                label1,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Big Soulders Display"),
              ),
        Expanded(
          child: TextField(
            textAlign: TextAlign.center,
            controller: moneycont,
            keyboardType: TextInputType.number,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "Big Soulders Display"),
            decoration: InputDecoration(
              hintText: hintcont,
              hintStyle: TextStyle(
                color: Colors.white,
                fontFamily: "Big Soulders Display"
              ),
              border: InputBorder.none,
            ),
          ),
        ),
            ],
          ),
        ),

      ],
    );
  }
}

