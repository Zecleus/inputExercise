import 'package:flutter/material.dart';

class SwitchInput extends StatefulWidget {
  const SwitchInput({Key? key}) : super(key: key);

  @override
  _SwitchInputState createState() => _SwitchInputState();
}

class _SwitchInputState extends State<SwitchInput> {
  bool flover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SwitchListTile(
          title: Text("Stan fromis_9?"),
          value: flover,
          onChanged: (bool? value) {
            setState(() {
              flover = value!;
            });
          }),
    );
  }
}
