import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:ganho_parceiro/widgets/inputs2.dart';
import 'package:ganho_parceiro/widgets/inputs_1.dart';
import 'package:ganho_parceiro/widgets/loadingbuttion.dart';

class SubmentF extends StatelessWidget {
  var ganhoscontroller = MoneyMaskedTextController();
  var dispescontroller = MoneyMaskedTextController();
  var horacontroller = MaskedTextController(mask: "");
  var coridacontroller = MaskedTextController(mask: "");
  var busy1 = false;
  Function submitFunc;

  SubmentF({
    @required this.ganhoscontroller,
    @required this.dispescontroller,
    @required this.horacontroller,
    @required this.coridacontroller,
    @required this.busy1,
    @required this.submitFunc,

  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        MyInputs(
                          label1: "Ganhos Hoje",
                          hintcont: "",
                          moneycont: ganhoscontroller,
                        ),
                      ],
                    ),
                ),
                Container(
                  width: 150,
                  height: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        MyInputs(
                          label1: "Dispes Hoje",
                          hintcont: "",
                          moneycont: dispescontroller,
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Row(              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        HoraInput(
                          label2: "Hora Logada",
                          hintin: "00:00",
                          masked2: horacontroller,
                        ),
                      ],
                    ),
                ),
                Container(
                  width: 150,
                  height: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        HoraInput(
                          label2: "Total Corridas",
                          hintin: "000",
                          masked2: coridacontroller,
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),
          LoadingButtions(
            func: submitFunc,
            text: "Calcular",
            invert: false,
            lbusy: busy1,
          ),
      ],
    );
  }
}