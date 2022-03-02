import 'package:flutter/material.dart';

class CheckboxInput extends StatefulWidget {
  const CheckboxInput({Key? key}) : super(key: key);

  @override
  _CheckboxInputState createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInput> {
  bool checkbox1 = false;
  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CheckboxListTile(
            title: Text("First Option"),
            value: checkbox1,
            onChanged: (bool? value) {
              setState(() {
                checkbox1 = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("Second Option"),
            value: checkbox2,
            onChanged: (bool? value) {
              setState(() {
                checkbox2 = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
