import 'package:flutter/material.dart';

class kalkulasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double convertToKelvin(temperature) {
      return temperature + 273;
    }

    double convertToReamur(temperature) {
      return temperature * 4 / 5;
    }

    double _inputUser = 0;
    double _kelvin = 0;
    double _reamur = 0;
    TextEditingController etinputUser = new TextEditingController();
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          hoverColor: Colors.red,
          onPressed: () {
            setState(() {
              _inputUser = double.parse(etinputUser.text);
              _kelvin = convertToKelvin(_inputUser);
              _reamur = convertToReamur(_inputUser);
            });
          },
          textColor: Colors.white,
          child: Text(
            "Konversi Suhu",
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
