import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class inputValue extends StatelessWidget {
  const inputValue({
    Key key,
    @required this.etinputUser,
  }) : super(key: key);

  final TextEditingController etinputUser;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: etinputUser,
      decoration: InputDecoration(hintText: "Masukkan Suhu Dalam Celcius"),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}
