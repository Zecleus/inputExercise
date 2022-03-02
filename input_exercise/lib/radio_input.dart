import 'package:flutter/material.dart';

class RadioInput extends StatefulWidget {
  const RadioInput({Key? key}) : super(key: key);

  @override
  _RadioInputState createState() => _RadioInputState();
}

class _RadioInputState extends State<RadioInput> {
  String choice = "gyuri";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RadioListTile(
            title: Text("Romsae"),
            value: "saerom",
            groupValue: choice,
            onChanged: (String? value) {
              setState(() {
                choice = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("Gyuri"),
            value: "gyuri",
            groupValue: choice,
            onChanged: (String? value) {
              setState(() {
                choice = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("Hayoung"),
            value: "hayoung",
            groupValue: choice,
            onChanged: (String? value) {
              setState(() {
                choice = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
