import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final textInputController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textInputController.addListener(() {
      print('The value is ${textInputController.text}');
    });
  }

  @override
  void dispose() {
    super.dispose();

    textInputController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        keyboardType: TextInputType.text,
        maxLength: 25,
        decoration: InputDecoration(labelText: "Name"),
        controller: textInputController,
      ),
    );
  }
}
