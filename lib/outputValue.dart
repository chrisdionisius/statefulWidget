import 'package:flutter/material.dart';

class outputValue extends StatelessWidget {
  const outputValue({
    Key key,
    @required double kelvin,
    @required double reamur,
  })  : _kelvin = kelvin,
        _reamur = reamur,
        super(key: key);

  final double _kelvin;
  final double _reamur;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Suhu dalam kelvin"),
                Text(
                  '$_kelvin',
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 20, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Suhu dalam reamur"),
                  Text(
                    '$_reamur',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
