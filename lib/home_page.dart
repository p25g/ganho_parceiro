import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:ganho_parceiro/widgets/submit_form.dart';
import 'package:ganho_parceiro/widgets/success.dart';
import 'widgets/logo.dart';
 


class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Color _colors = Colors.deepPurple;
  var _ganhostxt = MoneyMaskedTextController(leftSymbol: "R\$");
  var _dispesatxt = MoneyMaskedTextController(leftSymbol: "R\$");
  var _horatxt = MaskedTextController(mask: "00:00");
  var _corridatxt = MaskedTextController(mask: "000");
  var _busy = false;
  var _completed = false;
  var _resultext1 = "";
  var _resultext2 = "";
  var _resultext3 = "";
  var _resultext4 = "";
  var _resultext5 = "";
  var _resultext6 = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: AnimatedContainer(
          duration: Duration(
            microseconds: 1200
          ),
          color: _colors,
          child: ListView(
          children: <Widget>[
            MyLogo(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _completed
            ? Success(
              result1: _resultext1,
              result2: _resultext2,
              result3: _resultext3,
              result4: _resultext4,
              result5: _resultext5,
              result6: _resultext6,
            reset: reset,)
            : SubmentF(
              ganhoscontroller: _ganhostxt,
              dispescontroller: _dispesatxt,
              horacontroller: _horatxt,
              coridacontroller: _corridatxt,
              submitFunc: calculate,
              busy1: _busy,
            ),
          ),
          ],
        ),
        )
      ),
    );
  }

   calculate(){
    double ganhosbruto = double.parse(_ganhostxt.text.replaceAll(RegExp(r'[R$,.]'), "")) /100;//bruto total
    double dispesbruta = double.parse(_dispesatxt.text.replaceAll(RegExp(r'[R$,,.]'), "")) /100;//gastostotal
    double totalcorridas = double.parse(_corridatxt.text);//corridas do dia
    var horacompleta = _horatxt.text.split(":");
    int hora = int.parse(horacompleta[0]);
    int min = int.parse(horacompleta[1]);
    double tempmaioruma = (hora + (min / 60)); // convertendo minuto em hora caso tmp for mair que uma hora
    var tempmenoruma = (min);
    double ganholiquidototal = double.parse(
      (ganhosbruto - dispesbruta).toStringAsFixed(2)); //liquido total
    var ganholiquidohora = (ganholiquidototal / tempmaioruma).toStringAsFixed(2);//liq se hora maior que uma
    var ganholiquidocorrida = (ganholiquidototal / totalcorridas).toStringAsFixed(2);//liquido p corrida
    var ganhobrutohora = (ganhosbruto / tempmaioruma).toStringAsFixed(2);//bruto se hora maior que uma
    var ganhobrutocorrida = (ganhosbruto / totalcorridas).toStringAsFixed(2);//bruto p corrida
    var menorqueumahoraBruto = (ganhosbruto / tempmenoruma).toStringAsFixed(2);
    var menorqueumahoraliquido = (ganholiquidototal / tempmenoruma).toStringAsFixed(2);
    if(hora == 0){ganhobrutohora = menorqueumahoraBruto;}    

    if(hora == 0){ganholiquidohora = menorqueumahoraliquido;}
    

        
  setState((){
      _colors = Colors.deepOrange;
      _completed = false;
      _busy = true;
  });

  return new Future.delayed(
    const Duration(milliseconds: 920),
    () {
  setState(() {
    _resultext1 = "Ganho bruto             R\$ $ganhosbruto";
    _resultext2 = "Ganho liquido           R\$ $ganholiquidototal";
  if(hora == 0){ _resultext3 = "Ganho bruto/minutos    R\$ $menorqueumahoraBruto";}
  else{_resultext3 = "Ganho bruto/hora      R\$ $ganhobrutohora";}
  if(hora == 0){_resultext4 = "Ganho liquido/minutos  R\$ $menorqueumahoraliquido";}
  else{_resultext4 = "Ganho liquido/hora    R\$ $ganholiquidohora";}    
    _resultext5 = "Ganhos bruto/corridas   R\$ $ganhobrutocorrida";
    _resultext6 = "Ganhos liquido/corridas R\$ $ganholiquidocorrida";



    _completed = true;
    _busy = false;
  });});
  }
  reset(){
    setState(() {
      _colors = Colors.deepPurple;
      _ganhostxt = MoneyMaskedTextController(leftSymbol: "R\$");
      _dispesatxt = MoneyMaskedTextController(leftSymbol: "R\$");
      _horatxt = MaskedTextController(mask: "00:00");
      _corridatxt = MaskedTextController(mask: "000");      
      _completed = false;
      _busy = false;
    });
  }
}
