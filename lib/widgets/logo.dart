import 'package:flutter/material.dart';

import 'my_clippath.dart';

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      Container(
        child: Text("Lucro Real",
        style: TextStyle(
          fontFamily: "Big Soulders Display",
          fontSize: 35,
          color: Colors.white
        ),),
        height: 45,
      ),
      ClipPath(
        clipper: MyclipPath(),
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: ExactAssetImage(
              "assets/images/recife1.jpeg"
              ),
            fit: BoxFit.cover,
          )),
        ),
      )
    ]);
  }
}
