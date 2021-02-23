import 'package:flutter/material.dart';
import 'inputValue.dart';
import 'outputValue.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

double convertToKelvin(temperature) {
  return temperature + 273;
}

double convertToReamur(temperature) {
  return temperature * 4 / 5;
}

class _MyAppState extends State<MyApp> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  TextEditingController etinputUser = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              inputValue(etinputUser: etinputUser),
              outputValue(kelvin: _kelvin, reamur: _reamur),
              SizedBox(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
