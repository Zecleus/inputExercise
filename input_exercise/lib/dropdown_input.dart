import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  const DropdownInput({Key? key}) : super(key: key);

  @override
  _DropdownInputState createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String chosenMember = "Jisun";
  var members = [
    "Saerom",
    "Hayoung",
    "Gyuri",
    "Jiwon",
    "Jisun",
    "Seoyeon",
    "Chaeyoung",
    "Nagyung",
    "Jiheon"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: chosenMember,
        onChanged: (String? value) {
          setState(() {
            chosenMember = value!;
          });
        },
        items: members.map((String item) {
          return DropdownMenuItem(
            child: Text(item),
            value: item,
          );
        }).toList(),
      ),
    );
  }
}
