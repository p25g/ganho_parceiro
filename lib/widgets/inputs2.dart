
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HoraInput extends StatelessWidget {
    var label2 = "";
    var masked2 = MaskedTextController(mask: "");
    var hintin = "";

HoraInput({
  @required this.label2,
  @required this.masked2,
  @required this.hintin,
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
                label2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Big Soulders Display"),
              ),
        Expanded(
          child: TextField(
            textAlign: TextAlign.center,
            controller: masked2,
            keyboardType: TextInputType.number,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "Big Soulders Display"),
            decoration: InputDecoration(
              hintText: hintin,
              hintStyle: TextStyle(
                color: Colors.white),
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