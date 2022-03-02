import 'package:flutter/material.dart';

class SliderInput extends StatefulWidget {
  const SliderInput({Key? key}) : super(key: key);

  @override
  _SliderInputState createState() => _SliderInputState();
}

class _SliderInputState extends State<SliderInput> {
  double albumNo = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Slider(
            min: 0,
            max: 10,
            divisions: 10,
            label: albumNo.toInt().toString(),
            value: albumNo,
            onChanged: (double value) {
              setState(() {
                albumNo = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
